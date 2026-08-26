// mint-highlight.js
//
// minted.4ht wraps each code block in a real element:
//   <div class="minted-block" data-lang="idris2">...raw fancyvrb output...</div>
// (an HTML comment-based marker was tried first, but got stripped
// somewhere in Franklin's page assembly before reaching the browser --
// a real element survives that.)
//
// This finds each .minted-block, pulls out the real source text via
// .textContent (which automatically un-escapes entities and strips any
// stray tags/anchors tex4ht left inside), and replaces it with a proper
// <pre><code class="hljs language-LANG"> highlighted by highlight.js.
//
// Load this AFTER highlight_pack.js (and the idris2 grammar it now
// contains) is loaded.

(function () {
  function highlightBlock(el) {
    var lang = el.getAttribute("data-lang") || "";
    var code = el.textContent;

    var pre = document.createElement("pre");
    var codeEl = document.createElement("code");
    codeEl.className = "hljs language-" + lang;
    try {
      codeEl.innerHTML = hljs.highlight(code, { language: lang, ignoreIllegals: true }).value;
    } catch (e) {
      codeEl.textContent = code; // fall back to plain, unhighlighted text
    }
    pre.appendChild(codeEl);

    el.replaceWith(pre);
  }

  document.addEventListener("DOMContentLoaded", function () {
    if (typeof hljs === "undefined") return;
    document.querySelectorAll("div.minted-block").forEach(highlightBlock);
  });
})();
