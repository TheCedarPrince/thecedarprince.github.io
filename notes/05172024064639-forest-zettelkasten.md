+++
title = "Thoughts on Forester: A Scientist's Zettelkasten"
slug = "05172024064639-forest-zettelkasten"
tags = ["blog", "forester", "sterling", "zettelkasten", "tool", "thought", "open", "source", "note", "archive"]
description = "Some preliminary and early thoughts on Forester, a robust tool for scientists and mathematicians in developing and working with one's own Zettelkasten."
rss_title = "Thoughts on Forester: A Scientist's Zettelkasten"
rss_description = "Some preliminary and early thoughts on Forester, a robust tool for scientists and mathematicians in developing and working with one's own Zettelkasten."
rss_pubdate = Date(2024, 5, 17)
+++



Thoughts on Forester: A Scientist's Zettelkasten
=========

**Date:** May 17 2024

**Summary:** Some preliminary and early thoughts on Forester, a robust tool for scientists and mathematicians in developing and working with one's own Zettelkasten.

**Keywords:** #blog #forester #sterling #zettelkasten #tool #thought #open #source #note #archive

Bibliography
==========

Jon Sterling. Forester. https://github.com/jonsterling/ocaml-forester

Table of Contents
=========

\toc

### Motivation

In discussion with my friend and mentor, [Dr. Evan Patterson](https://jacobzelko.com/05192024173906-evan-patterson), I was introduced to a tool created by Dr. Jon Sterling called Forester. These are some of my early thoughts on trying out Forester for my own research and workflow.

### Transclusions Done Right

In my mind, it feels to me that Forester really nailed how transclusions should work in a Zettelkasten type of workflow. In my mind, it is the perfect ambient environment for quickly building and stringing ideas together in coherent and yet atomic ways. Here's an example of it in action:

![](assets/05182024220110-forester-transclude.gif)

> **Forester Transclusion:** As one can see, the transclusion is snappy, encourages from its foundation the creation of small pieces of information as different files, and is easy to put together.


What I also didn't really highlight is that it has great support for various kinds of backlinks that I haven't really had a chance to explore yet. I think backlinking is another crucial element of Zettelkastens and this is another thing that Forester's transclusion approach got right. Finally, I haven't tested this yet, but apparently handling of citations via $\mathbf{BibTeX}$ and some of Forester's unique markup syntax enables citations to get rendered "automatically" between transcluded notes meaning that I would personally not have to worry about creating a bibliography for a note that has several transclusions in it as long as the source notes themselves have the relevant and needed citations.

### Overall Impressions

I played around with Forester for several hours and had quite some fun with the tool. The syntax was relatively straightforward to pick up thanks to the [published markup syntax guide](https://www.jonmsterling.com/jms-007N.xml) and a [nice write-up from Owen Lynch](https://forest.localcharts.org/lc-0002.xml). It wraps around HTML elements using a strange combination of XML and XSTL – interestingly, the tool itself was written in OCaml and this served as my first introduction to ML-style languages. Here's an example of the mark-up which is, quite pointedly, called `tree` files:

```
\title{Jacob S. Zelko Personal Details}
\taxon{bio}
\date{2024-05-16}
\import{macros}

\<html:div>[style]{
  width: 50\%; 
  height: 400px; 
  background-image: url('jz.jpg'); 
  background-size: contain; 
  background-repeat: no-repeat;
}{}

\p{}

\p{
  My name is Jacob Scott Zelko! 
  I am currently pursuing my MS in Applied Mathematics at Northeastern University (NEU) 
  and am a trainee of NEU's Roux Institute.
}
```

As one can see, the syntax is relatively straightforward (although I had to do an "ugly" hack to get image rendering to work). It feels very $\LaTeX$-ish in the sense that all the curly braces have come back – with a vengeance! One is able to create their own macros similar to how you can in various programming languages as well as within $\LaTeX$ and inject HTML directly into your documents similar to how you can with Markdown. In fact, to me, it feels a hybrid between Markdown and $\LaTeX$ Although the syntax is a bit gnarly, where it really shines is it's handling of mathematical notation directly in your browser. Thanks to a macro and `sty` file Owen created for the platform, [LocalCharts](https://forest.localcharts.org), I can readily render and draw commutative diagrams simply and easily directly within my notes:

```
\p{
  \quiver{

    \begin{tikzcd}
      && X \\
      \\
      A && {A \times B} && B
      \arrow["{p_1}"', from=1-3, to=3-1]
      \arrow["u"', dashed, from=1-3, to=3-3]
      \arrow["{p_2}", from=1-3, to=3-5]
      \arrow["{\pi_1}"', from=3-3, to=3-1]
      \arrow["{\pi_2}"', from=3-3, to=3-5]
    \end{tikzcd}

  }
}
```

> Note: the macro `quiver` is what allows me to create this `tikzcd` diagram directly in my notes. Aside from the `p` and `quiver` notation, the commutative diagram `tikz` code I wrote here is strictly $\LaTeX$ – finally, full Tikz support in the browser and easily done too!


One thing that I should also mention is the first rate support Forester does have for mathematics typesetting. Out of the box, it supports most of $\LaTeX$ math formatting and enables one to quickly and easily render mathematics equations or notation where necessary. To my understanding, it's way of rendering is much richer than MathJax or $\KaTeX$ but I am unsure of all the internals of how the math is rendered.

### Developing a Forester Workflow

As Forester is still quite new, it is understandable if the workflow isn't quite sorted yet. I personally felt that this was one of the more underdeveloped aspects of the Forester ecosystem. After reviewing available tools, I settled on this approach:

  * **Writing**: using my [Neovim configuration](https://github.com/TheCedarPrince/Service) to write notes quickly.
  * **Live Updates**: [Kento Okura](https://github.com/kentookura) created a really nice Forester tool called "[forest-server](https://github.com/kentookura/forest-server)" in Rust that allows previews and builds to happen instantly.
  * **Preview**: I use the [Vivaldi browser](https://vivaldi.com) to do a live preview of my notes changing and updating in real time.

Here's an example of the workflow in action:

![](assets/05192024172349-forester-preview.gif)

The key command here I use is the function `forest watch 1234 -- "build forest.toml"` in the base of my "forest". As I save my file, the command to build the forest is triggered and updates the note rather quickly. There is some flashing going on with the updating that I do not know how to fix – can be a bit jarring but is mostly fine.

### Thoughts for Now

Although I quite like Forester, I am a bit hesitant to transfer over to it myself for all my Zettelkasten needs. One of the biggest reasons for this is that my own Zettelkasten at this point has nearly $600$ notes all written in markdown. To translate them over, I could write a parser for [NoteMate.jl](https://jacobzelko.com/NoteMate.jl/dev/) that would allow ready translation from my [note style](04172022033744-open-knowledge-standard.md) to a `tree` file.

Additionally, there are a few features that I feel just aren't quite "there yet". Particularly, the following:

  * The syntax for `tree` files, although a great start, is missing some things I find important.

This includes more ergonomic syntax for including images, code blocks, quote blocks, etc. that I rely on within markdown.

  * The wrapping around HTML elements doesn't feel quite complete.

As an example, to include an image on a page, I can write something like `\<html:img>[src]{photo.png}` which is easy enough. But what if I want to inject more attributes to the HTML element here, such as the `max-width` of the image? That was not clear to me in my readings of the source code and syntax reference.

  * Although I thought that the transclusion methods of Forester by default are great, it does not appear to me how one can reference sections of a note via transclusion.

For example, within my markdown set-up, not only can I reference other notes, I can also link to the direct section within a particular note. I have not seen any such "section referencing" capabilities available in Forester if I just want to transclude "part" of a note.

  * Lack of interoperability with other note types or note systems.

As I mentioned, I still have $\approx 600$ markdown notes within my personal Zettelkasten so being able to go between other note types is crucial. What's more, related to this problem, is that markdown or $\LaTeX$ is far more ubiquitous and accessible across multiple platforms if I need to preview or reference something on the spot. I haven't yet seen this available with `tree` files yet.

With that all to say, if I had started my personal Zettelkasten journey with Forester, I think I probably would've figured out ways to get around all these issues. As of now, these issues prevent me from wanting to move my entire Zettelkasten over to the system.

However, with that said, I think I actually will try giving Forester more of a test with some of my mathematics studies and research. It's first rate support for mathematics is superb and although the workflow is quite minimal at the time, while writing some notes in the `tree` files, I was beginning to see just how natural and ergonomic it was to write within the system. Depending on how things go with my experiments with Forester, I may end up having to write a parser of some kind in the near future!

If you use or have used Forester, please let me know your experience with it and comment below – would love to hear about your experiences!
## How To Cite

 Zelko, Jacob. _Thoughts on Forester: A Scientist's Zettelkasten_. [https://jacobzelko.com/05172024064639-forest-zettelkasten](https://jacobzelko.com/05172024064639-forest-zettelkasten). May 17 2024.
## References:
## Discussion: 

{{ addcomments }}
