"""
    {{ addcomments }}

Add a comment widget, managed by Talkyard <https://talkyard.io>. The discussion id is
derived from the current page's own source path (e.g. `notes/aaa-0277` -> `aaa-0277`)
so every page gets its own persistent discussion thread instead of sharing one blank id.
"""
function hfun_addcomments()
    discussion_id = basename(locvar(:fd_rpath))

    html_string = """
    <script>talkyardServerUrl='https://site-vbm8wbc57o.talkyard.net';</script>
    <script async defer src="https://c1.ty-cdn.net/-/talkyard-comments.min.js"></script>
    <div class="talkyard-comments" data-discussion-id="$(discussion_id)" style="margin-top: 45px;">
        <noscript>Please enable Javascript to view comments.</noscript>
    </div>
    """

    return html_string
end

"""
    {{ addsearchbar }}

Add a search trigger, powered by Pagefind's Component UI
(https://pagefind.app/docs/search-ui). Clicking it, or pressing Ctrl+K
(Cmd+K on Mac) from anywhere on the site, opens a modal search overlay.
No separate search page is needed — see head.html for the
pagefind-component-ui script/stylesheet include, and the site's
publish/build script for the Pagefind indexing step.
"""
function hfun_addsearchbar()
    html_string = """
    <div class="site-search">
        <pagefind-config excerpt-length="60"></pagefind-config>
        <pagefind-modal-trigger placeholder="Search"></pagefind-modal-trigger>
        <pagefind-modal></pagefind-modal>
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
