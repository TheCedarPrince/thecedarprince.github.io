using CSV
using DataFrames
using Dates

records = CSV.read("/home/src/Projects/NewWebSite/scripts/note_records.csv", DataFrame)

sort!(records, :creation_date, rev = true)

open("archive.md", "w") do archive 
    write(archive, 
    """
    @def title = "Archive"
    @def tags = ["archive", "zettelkasten"]

    My open zettelkasten archive of notes.
    The titles, creation dates, summaries, and key words of a note are provided per entry.

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
