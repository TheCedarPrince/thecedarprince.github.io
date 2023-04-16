+++
title = "The Open Knowledge Model"
slug = "04172022033744-open-knowledge-standard"
tags = ["open", "knowledge", "standard", "summary", "format", "blog", "archive"]
description = "A working proposal on a standard knowledge format for taking notes"
rss_title = "The Open Knowledge Model"
rss_description = "A working proposal on a standard knowledge format for taking notes"
rss_pubdate = Date(2022, 4, 16)
+++



The Open Knowledge Model
=========

**Date:** April 16 2022

**Summary:** A working proposal on a standard knowledge format for taking notes

**Keywords:** #open #knowledge #standard ##summary #format #blog #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Motivation

Knowledge is one of the most nebulous ideas known to mankind since nearly the beginning of time. What may be knowledge to one person may be useless noise to another - this encapsulates the difficulty in defining knowledge. As a result of its many possible meanings, I put forth a rather opinionated proposal for what I term the "Open Knowledge Model".

The Open Knowledge Model is a standard that defines not how to maintain knowledge in what are typically coined "knowledge management systems". Instead, its focus is on how to structure information that goes directly into such systems. It is fully compatible with the [ISO 30401](https://www.iso.org/standard/68683.html) standard.

There are many different knowledge management systems available to someone – from a pen and pencil to various software offerings. Each of these offerings are very unique and accordingly offer benefits and cons. This model remains independent of any such offering but instead prescribes a model to structure information in any of the offerings one chooses to pursue.

### Model Components

The model is composed of the following sections:

  * **Title Block** - this is a unique block that begins with the name of the note followed by three required subcomponents:

```
- **Date** - the date the note was created
- **Summary** - a brief, single sentence summary of what this note is about
- **Keywords** - keywords that can be used to find or associated with the content of this note
```

  * **Bibliography Block** - this contains the bibliographic information that is associated with the specific note
  * **Notes** - where one's notes go on the note subject in whatever format one so chooses
  * **References** - list of references used in the note

And that is the core requirement of the model.  What follows are a few digressions on this model. 

### Digressions and Recommendations for Model

#### Title Block

It is recommended that for **Date**, one chooses a consistent convention for how one will record the date across their knowledge base using this model.  In practice, there can be as many **Keywords** as one chooses, but it is often better to be more concise in what you choose as words.

#### Bibliography Block

It can be possible that there isn't one bibliography associated with this not or none at all.  In those situations, it makes sense to perhaps write something like: "Not Available".

#### Notes

This is the most critical piece to any note.  One can structure and write their notes in any way they please here.  Include images, diagrams, code snippets – anything your knowledge management system supports. The model imposes no specific structure here – implementations may differ.

#### References

It is recommended to never write down the references section manually. Instead, offload this to a third party reference manager or another tool that could generate this information from a given note. 

### Implementation Examples

To give an example of implementations, here are some examples of implementations:

  * [Markdown Implementation](https://jacobzelko.com/08032021134232-notes-template)

### Tools for Working with Model

Here are a list of some tools that have emerged to work with the Open Knowledge Model: 

  * [NoteMate.jl](https://github.com/TheCedarPrince/NoteMate) - a companion for working with a knowledge management system that adheres to the Open Knowledge Model.

Written in Julia and offers parsing from Markdown notes to other target formats.

### Conclusion

This standard is an active work in progress and is the product of years of experimentation.  If you find problems with this model or believe it too restrictive or unwise, please comment in the discussion or reach out to me. My hope is that this standard will co-evolve with new tools and increase the utility of any person's knowledge management system.
## How To Cite

 Zelko, Jacob. _The Open Knowledge Model_. [https://jacobzelko.com/04172022033744-open-knowledge-standard](https://jacobzelko.com/04172022033744-open-knowledge-standard). April 16 2022.
## References:
## Discussion: 

{{ addcomments }}
