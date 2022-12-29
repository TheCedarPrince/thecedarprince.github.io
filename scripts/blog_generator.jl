using CSV
using DataFrames
using Dates

records = CSV.read("/home/src/Projects/NewWebSite/scripts/note_records.csv", DataFrame)

sort!(records, :creation_date, rev = true)

filter!(row -> !ismissing(row.keywords) && occursin("blog", row.keywords), records)

open("blog.md", "w") do archive 
    write(archive, 
    """
    @def title = "Blog Posts"

    # Blog
    
    My blog posts ordered by date.
    The titles, date, summaries, and key words of a blog are provided per entry

    ---
    
    ~~~

    """)

    for row in eachrow(records)
        write(archive, 
        """
            	<br>

            	<span class = post-item id = $(lowercase(row.title) |> x -> replace(x, " " => "-"))>
                     		<a href = http://jacobzelko.com/$(row.filename[1:end-3])/>
                              			<strong>
                                       				$(row.title)
                              			</strong>
                              			[$(Dates.format(row.creation_date, "u d Y"))]
                     		</a>
                     		<br>
                              			$(row.summary)
                     		<br>
                              			$(row.keywords)
                     		<br>
            	</span>

            	<br>

        """)
    end
    write(archive, "\n~~~")
end
