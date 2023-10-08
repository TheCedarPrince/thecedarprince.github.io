+++
title = "Resources for Learning the Julia Programming Language"
slug = "10082023195125-julia-learning-resources"
tags = ["julia", "programming", "beginners", "recommendations", "learning", "archive", "blog"]
description = "A non-exhaustive list of recommendations for how I suggest learning Julia to language newcomers"
rss_title = "Resources for Learning the Julia Programming Language"
rss_description = "A non-exhaustive list of recommendations for how I suggest learning Julia to language newcomers"
rss_pubdate = Date(2023, 10, 8)
+++



Resources for Learning the Julia Programming Language
=========

**Date:** October 8 2023

**Summary:** A non-exhaustive list of recommendations for how I suggest learning Julia to language newcomers

**Keywords:** #julia #programming #beginners #recommendations #learning #archive #blog

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Motivation

I saw an interesting post on [BlueSky recently](https://bsky.app/profile/naturepoker.bsky.social/post/3kb7gi65xqm2a) that got me thinking about Julia learning resources. I tend to give out a lot of advice about how to go about learning Julia but I realized I have never really centralized one place where I keep that information. This blog post talks about my personal opinions both within the Julia ecosystem and recommendations for how to learn Julia.

### Before Programming with Julia, Let's Set It Up

The fantastic initiative, [Modern Julia Workflows](modernjuliaworkflows.github.io/), spearheaded by Guillaume Dalle and co has a number of sections that can help with getting set-up fast (I'll be referring to their work quite a bit throughout this post). In particular, here are the sections I'd recommend to get set-up fastest:

1. [How to install Julia on your computer](https://modernjuliaworkflows.github.io/pages/writing/#installation)
2. [What you need to write Julia](https://modernjuliaworkflows.github.io/pages/writing/#installation).

A special note on this from me is that you really do not need much – you could use something like NotePad on Windows, textedit on OSX, or KWrite on *nix systems. I like the stance Dalle takes in recommending VSCode however as this gives you the best mileage whether you are a beginner or expert programmer.

Suggestion 2 here will most likely take you the longest if you have never worked with a text editor before (a piece of software to create and edit most different types of files). So, no worries and enjoy the learning here!

### Julia Programming for New Programmers

If you are completely new to programming in general, I'd recommend the course, [Julia Programming for Nervous Beginners](https://juliaacademy.com/p/julia-programming-for-nervous-beginners), by Dr. Henri Laurie. It really eases you through how to start with programming and uses Julia as that learning tool. Otherwise, skip to the next section.

### Quickly Picking Up Julia Programming

To pick up Julia programming, I recommend [Introduction to Julia (for programmers)](https://juliaacademy.com/p/intro-to-julia) by Dr. Jane Herriman. This will get you going with Julia the fastest – especially if you already know some programming.

### What Is a Julian?

Before continuing your Julia adventure, it is worth a pause to discuss a couple aspects of Julia that one may not immediately recognize but are crucial in a productive Julia workflow. Otherwise, one may end up despairing over the supposed virtues of Julia. Here are some specific pieces:

1. Julia is a REPL-centric workflow.

If you are unfamiliar with what a REPL is, please see [this reference for details](https://modernjuliaworkflows.github.io/pages/writing/writing/#repl) but in short, the Julia REPL is a continuous loop that accepts all valid inputs. From loading a file, experimenting with code, or calling functions, the REPL serves as a scratchpad to iteratively build your overall Julia software instantly.

2. Julia is compiled – packages and functions will take a moment to load for use.

This builds on the previous point, but yes, as Julia is compiled, any package or function you want to use may execute slightly longer initially but then will be compiled for the duration of your work session. This is why you want your Julia workflow to be REPL-centric as you can get around this issue.

3. Julians organize Julia software into "projects" or packages.

Whether you are writing a collection of small scripts to analyze some data or developing a completely new software package, to effectively maneuver through your Julia code, make liberal use of [Pkg.jl]().  Dalle has an excellent reference that talks about this concept of [project environments](https://modernjuliaworkflows.github.io/pages/writing/writing/#local_packages) as well as how to build your own [local package](https://modernjuliaworkflows.github.io/pages/writing/writing/#local_packages).

4. Working within Julia can be extremely efficient – if you know how.

This is a circular statement as it naturally raises the question of, "how do I actually build a concrete Julia workflow?" Thankfully, [much has been written about this](https://modernjuliaworkflows.github.io/pages/writing/writing/#development_workflow)

5. Julians want to help you.

What is wonderful about the Julia community is that, in contrast to perhaps alternative internet communities, the bulk of Julians greatly enjoy helping not only other Julians but other programmers in general (there has been numerous occasions where I have seen Julians help other language users become even more proficient in their workflows). This is an [invaluable assortment](https://modernjuliaworkflows.github.io/pages/writing/writing/#getting_help) of where to find your fellow Julians.

I hope this section does not come off as overtly prescriptive, but I have seen the notion of "you are holding the tool wrong" or "what is Julian" (i.e. how do proficient Julia users do X) pop up too many times for new Julians or those experimenting with the language. I hope with this nudging guidance here, a new Julian can more clearly understand the "why" of what other more proficient Julians recommend.

### Building Up Expertise in Julia Programming

At this stage, we can now move from the beginner to intermediate Julian stage. Here, I think the world of Julia quite truly opens up to the new user. To delve deeper into Julia, here are some resources I would personally recommend:

  * Believe it or not, the [Julia documentation](https://docs.julialang.org/) is actually really nice to read and accessible.

Now, I don't just say this as I have helped write some of it, but I do truly think it worth looking through to get a better feel for aspects of Julia one may not consider.  I would suggest starting with the Manual section of the documentation.

  * Check out the [MIT Computational Thinking Course](https://computationalthinking.mit.edu/Fall22/) to have a more hands-on introduction to scientific computing.

I have never personally gone through it, but I hear it highly praised.

  * Try solving problems on [Exercism.io](https://exercism.io/tracks/julia) to practice and improve your skills.

I am a mentor here although don't have as much time anymore to help review. I still find this to be a really great place to further your learning and to get better at programming Julia – you'll often get feedback from expert Julia users which, in itself, is extremely valuable.

### Domain Specific Workflows in Julia

I will probably spin out the following sub-sections into their own blogs, but here are some selected domain specific workflows I have used or become familiar with that I use regularly within Julia.

#### Working with Data

This admittedly broad workflow encompasses much, but the most important packages in this space are:

  * [DataFrames.jl](https://dataframes.juliadata.org/stable/): This package provides a powerful data manipulation and analysis tool for Julia, similar to the pandas library in Python. 

      * Additionally, the author of the package, Bogumił Kamiński, is an extremely prolific blogger who shares many different ways of using DataFrames.jl.

    I highly suggest [his blog](https://bkamins.github.io).
  * [CSV.jl](https://csv.juliadata.org/stable/): Utility library for working with CSV and other delimited files in the Julia programming language
  * [TerminalPager.jl](https://github.com/ronisbr/TerminalPager.jl): a REPL-based Julia variable and documentation explorer

#### Plotting

When I first started within Julia, this was the only area I felt that was sorely lacking within the ecosystem. However, I am happy to say that this is no longer the case! In my mind, the best Julia plotting package is [Makie.jl](https://makie.org). It is an interactive data visualization and plotting ecosystem that has support for multiple backends ranging from publication quality static images, 3D images, to fully interactive plots and visualizations. I use it whenever I can.

### Conclusion

> **NOTE:** This blog post is a continuous work in progress.


As this blog post is a continuous work in progress, please feel free to comment below on questions about how I could improve it or explain more. That said, my goal with this blog post was not to cover every aspect of the Julia ecosystem but how to quickly go from knowing nothing about programming to becoming a self-sufficient Julian. May this concise guide help you in your way to achieving all that you want within Julia.
## How To Cite

 Zelko, Jacob. _Resources for Learning the Julia Programming Language_. [https://jacobzelko.com/10082023195125-julia-learning-resources](https://jacobzelko.com/10082023195125-julia-learning-resources). October 8 2023.
## References:
## Discussion: 

{{ addcomments }}
