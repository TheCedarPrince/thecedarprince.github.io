using CSV
using DataFrames
using Dates

"""
    {{ addcomments }}

TODO: Add set-up information for this 

Add a comment widget, managed by giscus <https://giscus.app>.
"""
function hfun_addcomments()

    html_string = """
    <script src="https://giscus.app/client.js"
        data-repo="TheCedarPrince/thecedarprince.github.io"
        data-repo-id="R_kgDOHRFrHA"
        data-category="General"
        data-category-id="DIC_kwDOHRFrHM4CPGIX"
        data-mapping="url"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="top"
        data-theme="transparent_dark"
        data-lang="en"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
    </script>"""

    return html_string
end

"""
    {{ addsearchbar }}

TODO: Add set-up information for this 

Add search bar using lunr
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

"""
TODO: Create newsletter function 
"""
function hfun_addnewsletter()
	html_string = """
	<iframe
scrolling="no"
style="width:100%!important;height:220px;border:1px #ccc solid !important"
src="https://buttondown.email/thecedarprince?as_embed=true"
></iframe><br /><br />
	"""
end

# TODO: Add support for mermaid diagrams again
