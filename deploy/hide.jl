"""
    add_hide_tag!(notes_repo; pattern=r"^[a-z]{3}-\\d{4}\\.tex\$", dry_run=true) -> NamedTuple

Append `hide` to every note's `\\keywords{}` block in `notes_repo`, skipping notes that
already carry it. Standalone — not part of NoteBuilder.jl — for a "hide everything, then
un-hide each note as it becomes build-ready" migration workflow.

Uses the same `\\keywords\\{([^}]*)\\}` matching that `_parse_metadata` (NoteBuilder.jl's
own compiler) relies on, so a note this script edits parses identically afterward. Tokens
are re-joined as `", "`-separated, which normalizes any inconsistent original spacing —
not a functional change, since `_parse_metadata` already splits on `[,\\s]+` either way.

Defaults to `dry_run=true` (preview only, no files written). Idempotent either way —
running it twice never double-adds `hide`.

# Arguments
- `notes_repo` - directory containing the `.tex` note files

# Keyword Arguments
- `pattern` - regex matching note filenames; default `r"^[a-z]{3}-\\d{4}\\.tex\$"` (same as `detect_notes`)
- `dry_run` - if `true` (default), report what *would* change without writing anything

# Returns
`NamedTuple` with:
- `modified::Vector{String}` - files that had (or would have) `hide` appended
- `already_hidden::Vector{String}` - files that already carry `hide`, left untouched
- `missing_keywords::Vector{String}` - files with no `\\keywords{}` at all, needing manual attention
"""
function add_hide_tag!(
    notes_repo :: AbstractString;
    pattern    :: Regex = r"^[a-z]{3}-\d{4}\.tex$",
    dry_run    :: Bool  = true
)::NamedTuple
    modified         = String[]
    already_hidden   = String[]
    missing_keywords = String[]

    files = filter(f -> occursin(pattern, f), readdir(notes_repo; join=false))

    for file in sort(files)
        path    = joinpath(notes_repo, file)
        content = read(path, String)

        m = match(r"\\keywords\{([^}]*)\}", content)
        if m === nothing
            push!(missing_keywords, file)
            continue
        end

        tokens = [strip(t) for t in split(m.captures[1], r"[,\s]+") if !isempty(strip(t))]

        if any(t -> lowercase(t) == "hide", tokens)
            push!(already_hidden, file)
            continue
        end

        replacement = "\\keywords{" * join(vcat(tokens, "hide"), ", ") * "}"
        start_idx   = m.offset
        stop_idx    = m.offset + ncodeunits(m.match) - 1
        new_content = content[1:start_idx-1] * replacement * content[stop_idx+1:end]

        push!(modified, file)
        dry_run || write(path, new_content)
    end

    return (modified = modified, already_hidden = already_hidden,
            missing_keywords = missing_keywords)
end

# --- run directly: `julia add_hide_tag.jl <notes_repo> [--write]` ----------
# Without --write, this only previews. Pass --write to actually rewrite files.
if abspath(PROGRAM_FILE) == @__FILE__
    notes_repo = length(ARGS) >= 1 ? ARGS[1] : "."
    dry_run    = !("--write" in ARGS)

    result = add_hide_tag!(notes_repo; dry_run)

    if dry_run
        println("DRY RUN — no files written. Re-run with --write to apply.\n")
    end

    println("$(dry_run ? "Would add" : "Added") `hide` to $(length(result.modified)) note(s):")
    foreach(f -> println("  $f"), result.modified)

    println("\nAlready hidden ($(length(result.already_hidden))): skipped")

    if !isempty(result.missing_keywords)
        println("\nNo \\keywords{} found in $(length(result.missing_keywords)) note(s) — needs manual attention:")
        foreach(f -> println("  $f"), result.missing_keywords)
    end
end
