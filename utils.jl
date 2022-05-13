using CSV
using DataFrames
using Dates
using pandoc_jll

"""
Struct representing a note in the knowledge base
"""
struct ArchiveNote
    title::Any
    date::Any
    summary::Any
    keywords::Any
    filename::Any
    filepath::Any
end

"""
Converts Pandoc Markdown links to valid Franklin links
"""
function pandoc_markdown_delinker(fpath)
    f = readlines(fpath)
    for (idx, line) in enumerate(f)
        if occursin(r"(?:__|[*#])|\[(.+?)]\((.+?)\)", line)
            matches = eachmatch(r"(?:__|[*#])|\[(.+?)]\((.+?)\)", line) |> collect
            if !isempty(matches)
                for m in matches
                    if !isnothing(m.captures[2])
                        link = splitext(m.captures[2])
                        if link[2] == ".md"
                            line =
                                replace(line, m.match => "[$(m.captures[1])](/$(link[1]))")
                        end
                    end
                end
            end
        end
        f[idx] = line
    end

    tpath = tempname()
    open(tpath, "w") do x
        for line in f
            write(x, line * "\n")
        end
    end
    return tpath
end

"""
Converts Markdown links to valid Franklin links
"""
function markdown_delinker(f)
    for (idx, line) in enumerate(f)
        if occursin(r"(?:__|[*#])|\[(.+?)]\((.+?)\)", line)
            matches = eachmatch(r"(?:__|[*#])|\[(.+?)]\((.+?)\)", line) |> collect
            if !isempty(matches)
                for m in matches
                    if !isnothing(m.captures[2])
                        link = splitext(m.captures[2])
                        if link[2] == ".md"
                            line =
                                replace(line, m.match => "[$(m.captures[1])](/$(link[1]))")
                        end
                    end
                end
            end
        end
        f[idx] = line
    end

    return f
end

"""
TODO: CREATE IMG SRC DELINKER 
"""
# function ()
	
# end


"""
Insert a note after rendering with pandoc
"""
function hfun_insert_note(params)
    rpath = params[1]
    file_path = joinpath(Franklin.path(:folder), rpath)
    (isfile(file_path) && splitext(file_path)[2] == ".md") || return ""

    file = pandoc_markdown_delinker(file_path)

    s = ""
    if length(params) == 2
        cite_path = joinpath(Franklin.path(:folder), params[2])
        csl_path =
            joinpath(Franklin.path(:folder), joinpath(dirname(params[2]), "ieee.csl"))
        s = pandoc() do pandoc_bin
            s = read(
                pipeline(
                    `cat $file`,
                    `$(pandoc_bin) --citeproc --csl=$csl_path --bibliography=$cite_path -f markdown -t html`,
                ),
                String,
            )
            return s
        end
    else
        s = pandoc() do pandoc_bin
            s = read(pipeline(`cat $file`, `$(pandoc_bin) -i $file_path -t html`), String)
            return s
        end
    end
    println("✓ [done].")
    return s
end

"""
Creates the raw HTML for a note given an ArchiveNote
"""
function create_post_entry(archive)
    post = """
          	<br>

          	<span class = post-item id = $(lowercase(archive.title) |> x -> replace(x, " " => "-"))>
                 		<a href = http://jacobzelko.com/$(archive.filename[1:end-3])/>
                        			<strong>
                               				$(archive.title)
                        			</strong>
                        			[$(archive.date |> d -> Dates.format(d, "u d Y"))]
                 		</a>
                 		<br>
                        			$(archive.summary)
                 		<br>
                        			$(archive.keywords)
                 		<br>
          	</span>

          	<br>
   """

    return post

end

"""
Parses note to an ArchiveNote
"""
function note_parser(f, filename, filepath)
    title = strip(f[1][2:end])

    date_str = split(f[3], "** ")[2] |> x -> split(x, " ")
    month = Dates.LOCALES["english"].month_value[date_str[1]]
    day = parse(Int, date_str[2])
    year = parse(Int, date_str[3])
    date = Date(year, month, day)

    summary = split(f[5], "** ")[2]

    keywords = split(f[7], "** ")[2]

    ArchiveNote(title, date, summary, keywords, filename, filepath)
end

"""
Creates a Franklin page linked to a given note
"""
function create_page(archive)
    open(joinpath(Franklin.path(:folder), archive.filename), "w") do f
        write(
            f,
            """
     @def title = "$(archive.title)"
     @def slug = "$(archive.filename[1:end-3])"
     @def tags = $(archive.keywords |> x -> replace(x, "#" => "") |> split .|> String)
     @def description = "$(archive.summary |> String)"

     @def rss_title = "$(archive.title)"
     @def rss_description = "$(archive.summary |> String)"
     @def rss_pubdate = Date$(archive.date |> Dates.yearmonthday)

     {{insert_note $(joinpath(archive.filepath, archive.filename)) _assets/notes/zettel.bib}}

     ## Discussion:
     
     {{addcomments}}
     """,
        )
    end
end

"""
The core function called on the Archive page.
"""
function hfun_build_archive()

    # Find all notes written using Markdown
    notes =
        readdir("_assets/notes/") |>
        x -> filter!(f -> f[(end - 2):end] == ".md", x) |> x -> "_assets/notes/" .* x

    # Create list of ArchiveNote objects
    archive = []
    for note in notes
        filename = basename(note) # Find name of a file
        filepath = dirname(note) # Find path to file
        note = readlines(note) # Read each line of the file
        note = markdown_delinker(note) # Fix URL links within a note
        arc_note = note_parser(note, filename, filepath) # Create ArchiveNote out of info
        push!(archive, arc_note)
    end

    # Read in article cache for website
    article_cache = CSV.read("_assets/notes/note_cache.csv", DataFrame)

    posts = ""
    for arc in archive

        posts = posts * create_post_entry(arc) * "\n\n" # Create entry post content

        # Find entry in article_cache corresponding to note
        arc_cache_info = filter(row -> row.filename == arc.filename, article_cache)
        filter!(row -> row.filename != arc.filename, article_cache)

        # Find last known edit time of file
        arc_edit_time = unix2datetime(mtime(joinpath(arc.filepath, arc.filename)))

        # If the most recent edit time of file is newer than cache, recreate file
        # Also, if note does not exist, create file
        if !(arc_cache_info.edit_time != arc_edit_time) || isempty(arc_cache_info)
            create_page(arc)
        end

        # Push updated line to cache
        push!(
            article_cache,
            Dict("filename" => arc.filename, "edit_time" => arc_edit_time),
            cols = :union,
        )

    end


    # Save cached DataFrame to file
    CSV.write("_assets/notes/note_cache.csv", article_cache)

    return posts

end

"""
The core function called on the Blog page.
"""
function hfun_build_blog()

    # Find all notes written using Markdown
    notes =
        readdir("_assets/notes/") |>
        x -> filter!(f -> f[(end - 2):end] == ".md", x) |> x -> "_assets/notes/" .* x

    # Create list of ArchiveNote objects
    archive = []
    for note in notes
        filename = basename(note) # Find name of a file
        filepath = dirname(note) # Find path to file
        note = readlines(note) # Read each line of the file
        note = markdown_delinker(note) # Fix URL links within a note
        arc_note = note_parser(note, filename, filepath) # Create ArchiveNote out of info
        push!(archive, arc_note)
    end

    # Read in article cache for website
    article_cache = CSV.read("_assets/notes/note_cache.csv", DataFrame)

    posts = ""
    for arc in archive
        if contains(arc.keywords, "##blog")

            posts = posts * create_post_entry(arc) * "\n\n" # Create entry post content

            # Find entry in article_cache corresponding to note
            arc_cache_info = filter(row -> row.filename == arc.filename, article_cache)
            filter!(row -> row.filename != arc.filename, article_cache)

            # Find last known edit time of file
            arc_edit_time = unix2datetime(mtime(joinpath(arc.filepath, arc.filename)))

            # If the most recent edit time of file is newer than cache, recreate file
            # Also, if note does not exist, create file
            if !(arc_cache_info.edit_time != arc_edit_time) || isempty(arc_cache_info)
                create_page(arc)
            end

            # Push updated line to cache
            push!(
                article_cache,
                Dict("filename" => arc.filename, "edit_time" => arc_edit_time),
                cols = :union,
            )
        end
    end

    # Save cached DataFrame to file
    CSV.write("_assets/notes/note_cache.csv", article_cache)

    return posts
end

"""
    {{ addcomments }}

Add a comment widget, managed by utterances <https://utteranc.es>.
"""
function hfun_addcomments()

    html_string = """
    <script src="https://utteranc.es/client.js"
           repo="TheCedarPrince/thecedarprince.github.io"
           issue-term="url"
           label="post"
           theme="github-light"
           crossorigin="anonymous"
           async>
    </script>"""

    return html_string
end


"""
    {{ addcomments }}

Add a comment widget, managed by utterances <https://utteranc.es>.
"""
function hfun_addsearchbar()

    html_string = """
	<div align="center">
        <form id="lunrSearchForm" name="lunrSearchForm">
            <input class="search-input" name="q" placeholder="Enter search term" type="text">
            <input type="submit" value="Search" formaction="/search/index.html">
        </form>
	</div>
    """

    return html_string
end
