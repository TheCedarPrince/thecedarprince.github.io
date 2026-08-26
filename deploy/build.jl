using NoteBuilder
using Dates
using DBInterface
using DuckDB

const NOTES_REPO    = joinpath(expanduser("~"), "Knowledgebase/TEXZK/")
const FRANKLIN_REPO = "../../Website"
const UTILITY_FILES = [
    "minted.4ht",
    "functions.tex",
    "build.lua",
    "zk.sty",
    "references.bib",
    "make4ht.cfg",
    joinpath("assets", "quiver.sty"),
    joinpath("assets", "tikzit.sty"),
    joinpath("assets", "tikzit.tikzstyles"),
]

const DB_PATH = joinpath(@__DIR__, "zkbuild.duckdb")
const LOG_IO  = open(joinpath(@__DIR__, "build.log"), "w")

function _notes_for_pages(db)::Vector{Note}
    result = DBInterface.execute(db,
        "SELECT id, title, date, tags, summary FROM notes WHERE error_msg IS NULL")
    notes = Note[]
    for row in result
        date_val = row[3] === missing ? nothing :
                   row[3] isa Dates.Date ? row[3] :
                   tryparse(Dates.Date, string(row[3]))
        push!(notes, Note(;
            id      = row[1],
            title   = row[2] === missing ? nothing : string(row[2]),
            date    = date_val,
            tags    = row[4] === missing ? String[] : collect(String, row[4]),
            summary = row[5] === missing ? nothing : string(row[5]),
        ))
    end
    return notes
end

function _write_if_changed(path::AbstractString, content::String)::Bool
    isfile(path) && read(path, String) == content && return false
    write(path, content)
    return true
end

function _pages_content(
    notes     :: Vector{Note},
    notes_dir :: AbstractString;
    title     :: String,
    intro     :: String,
    heading   :: Union{String, Nothing} = nothing,
    tags_def  :: Union{String, Nothing} = nothing
)::String
    io = IOBuffer()
    write(io, "@def title = \"$(title)\"\n")
    tags_def !== nothing && write(io, "@def tags = $(tags_def)\n")
    write(io, "\n")
    heading !== nothing && write(io, "$(heading)\n\n")
    write(io, "$(intro)\n\n---\n\n~~~\n\n")
    foreach(note -> write(io, _post_item(note, notes_dir)), notes)
    write(io, "\n~~~")
    return String(take!(io))
end

"""
    _post_item(note, notes_dir) -> String

Render one `notes.md`/`blog.md` listing entry, matching the legacy `post-item`
markup (unquoted attributes and all) from the old `archive_generator.jl`. The `id=`
slug intentionally stays title-based (not `note.id`) to match that legacy convention.
"""
function _post_item(note::Note, notes_dir::AbstractString)::String
    title    = something(note.title, note.id)
    slug     = replace(lowercase(title), " " => "-")
    href     = "/$(notes_dir)/$(note.id)/"
    d        = note.date
    date_str = "$(Dates.monthname(d)) $(Dates.day(d)), $(Dates.year(d))"
    summary  = something(note.summary, "")
    tags_str = join(titlecase.(filter(t -> lowercase(t) ∉ NoteBuilder.SPECIAL_TAGS, note.tags)), ", ")

    """
    	<br>

    	<span class = post-item id = $(slug)>
             		<a href = $(href)>
                                        [$(date_str)] 
                      			<strong>
                               				$(title)
                      			</strong>
             		</a>
             		<br>
                      			$(summary)
             		<br>
    	</span>

    	<br>

    """
end

"""
    build_pages!(db, franklin_repo; notes_dir="notes") -> NamedTuple

Regenerate `notes.md` (every published note) and `blog.md` (published notes tagged
`"blog"`). Hidden notes need no separate filtering since `delete_notes!` already
removes them from the table by the time this runs. Each file is diffed against what's
currently on disk and left untouched if nothing changed.
"""
function build_pages!(
    db,
    franklin_repo :: AbstractString;
    notes_dir     :: String = "notes"
)::NamedTuple
    published = _notes_for_pages(db)
    sort!(published, by = n -> n.date, rev = true)
    blog_notes = filter(n -> "blog" in lowercase.(n.tags), published)

    notes_content = _pages_content(published, notes_dir;
        title    = "Notes",
        tags_def = "[\"notes\", \"zettelkasten\"]",
        intro    = "My open zettelkasten archive of notes.\n" *
                   "The titles, creation dates, summaries, and key words of a note are provided per entry.")

    blog_content = _pages_content(blog_notes, notes_dir;
        title    = "Blog Posts",
        heading  = "# Blog",
        intro    = "My blog posts ordered by date.\n" *
                   "The titles, date, summaries, and key words of a blog are provided per entry")

    notes_written = _write_if_changed(joinpath(franklin_repo, "notes.md"), notes_content)
    blog_written     = _write_if_changed(joinpath(franklin_repo, "blog.md"), blog_content)

    return (notes_written = notes_written, blog_written = blog_written,
            notes_n = length(published), blog_n = length(blog_notes))
end
# -------------------------------------------------------------------------

log(msg) = (println(LOG_IO, "[$(now())] $msg"); flush(LOG_IO); println("  $msg"))

log("=" ^ 60)
log("NoteBuilder run started — threads=$(Threads.nthreads())")

db = open_database(DBInterface.connect(DuckDB.DB, DB_PATH))
conn = DuckDB.connect(db)

# 1 — detect
dirty_ids, skipped_ids = detect_notes(NOTES_REPO, FRANKLIN_REPO, db)
log("Stage 1 — detect_notes: $(length(dirty_ids)) dirty, $(length(skipped_ids)) skipped")

# 2 — parse metadata (cheap) and filter hidden *before* compiling
all_ids     = vcat(dirty_ids, skipped_ids)
dirty_notes = parse_notes(dirty_ids, NOTES_REPO)
hidden      = filter_hidden!(dirty_notes)
log("Stage 2 — parse_notes + filter_hidden!: $(length(dirty_notes)) to compile, " *
    "$(length(hidden)) hidden (compilation skipped for these)")

# 3 — compile only what's left
notes  = compile_notes(dirty_notes, NOTES_REPO;
                       utility_files = UTILITY_FILES,
                       franklin_repo = FRANKLIN_REPO)
n_ok   = count(n -> n.error_msg === nothing, notes)
n_fail = count(n -> n.error_msg !== nothing, notes)
log("Stage 3 — compile_notes: $n_ok ok, $n_fail failed")
foreach(n -> n.error_msg !== nothing &&
    log("  FAILED: $(n.id) — $(something(n.error_msg, "unknown error"))"), notes)

# 4 — build
published_set = setdiff(Set(all_ids), Set(n.id for n in hidden))
build_notes!(notes, FRANKLIN_REPO, published_set)
log("Stage 4 — build_notes!: $n_ok written")

# 5 — delete hidden
delete_notes!((n.id for n in hidden), FRANKLIN_REPO, db)
log("Stage 5 — delete hidden: $(length(hidden)) removed")

# 6 — tombstone
tombstoned = filter(id -> id ∉ Set(all_ids),
    [row[1] for row in DBInterface.execute(db, "SELECT id FROM notes")])
delete_notes!(tombstoned, FRANKLIN_REPO, db)
log("Stage 6 — tombstone: $(length(tombstoned)) removed")

# 7 — write DB
write_database(notes, db)
log("Stage 7 — write_database")

# 8 — regenerate notes.md / blog.md
pages = build_pages!(db, FRANKLIN_REPO)
log("Stage 8 — build_pages!: notes $(pages.notes_n) entries " *
    "($(pages.notes_written ? "regenerated" : "unchanged")), " *
    "blog $(pages.blog_n) entries ($(pages.blog_written ? "regenerated" : "unchanged"))")

DBInterface.close!(conn)
DuckDB.close(db)

# Summary
failed_notes = filter(n -> n.error_msg !== nothing, notes)
println()
println("Done. $n_ok built, $(length(failed_notes)) failed, $(length(skipped_ids)) unchanged.")
foreach(n -> println("  FAILED: $(n.id) — $(something(n.error_msg, "unknown error"))"),
        failed_notes)

log("Run complete: ok=$n_ok failed=$(length(failed_notes)) skipped=$(length(skipped_ids))")
log("=" ^ 60)
close(LOG_IO)
