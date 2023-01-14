+++
title = "Clarifying Understanding of Coproducts"
slug = "10022022214249-understanding-coproducts"
tags = ["question", "zulip", "category", "theory", "coproducts", "disjoint", "union", "set", "archive"]
description = "A line of questioning to ensure I understand what coproducts and disjoint unions are"
rss_title = "Clarifying Understanding of Coproducts"
rss_description = "A line of questioning to ensure I understand what coproducts and disjoint unions are"
rss_pubdate = Date(2022, 10, 2)
+++



Clarifying Understanding of Coproducts
=========

**Date:** October 2 2022

**Summary:** A line of questioning to ensure I understand what coproducts and disjoint unions are

**Keywords:** #question #zulip #category #theory #coproducts #disjoint #union #set  #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Reading Motivation

This is a question to clarify my understand of coproducts as I have largely spent some time in understanding what they are and how to interpret them. 

### Question

Hi everyone,

I was hoping I could get some clarification on my understanding of coproducts as I *believe* I have finally wrapped my head around them, but I want to be clear that I do.  To understand coproducts, I started with the set theory definition of a coproduct: 

$$
\bigcup_{i \in I} \{(x, i): x \in A_{i}\}
$$

where $i \in I$ denotes indexing from some *index set*, $I$, using the index term, $i$ and $A_{i}$ represents some *family of sets* indexed by $i$ and $x$ is some element of the respective $A_{i}$ set. Then, based on readings from Category Theory texts, I have gathered that the following is equivalent notation to the formal set theory definition: $\bigsqcup_{i \in I} A_{i}$.  As an example to make sure I am on the right track, here is a small simple problem and its solution according to my understanding:

> Find $\bigsqcup_{i \in I} A_{i}$ given the following:


> $$
> I = \{1, 2, 3\}
> $$


> $$
> A = \{\{1, 2, 3\}, \{2, 4, 6\}\}
> $$


> Solution: $\bigsqcup_{i \in I} A_{i} = \{(1, 1), (2, 1), (3, 1), (2, 2), (4, 2), (6, 2)\}$


Where I am confused is the following: 

1. What is the difference between $\bigsqcup_{i \in I} A_{i}$ and $\coprod_{i \in I} A_{i}$ and $X_{1} \coprod X_{2}$ syntax notation (the latter notation concerns two specific sets)?

I have seen all notations when referring to coproducts when viewed from both set theory and category theory perspectives. Is it a matter of aesthetic or is there a functional/semantic difference occurring?

2. I have read that coproducts are also known as disjoint unions.

I read about disjoint unions from a set theory perspective and also a category theory perspective but cannot really discern a functional (i.e. practical) difference from coproducts. Are coproducts and disjoint unions really effectively the same idea?

Thanks all and let me know if I can clarify anywhere! 
## How To Cite

 Zelko, Jacob. _Clarifying Understanding of Coproducts_. [https://jacobzelko.com/10022022214249-understanding-coproducts](https://jacobzelko.com/10022022214249-understanding-coproducts). October 2 2022.
## References:
## Discussion: 

{{ addcomments }}
