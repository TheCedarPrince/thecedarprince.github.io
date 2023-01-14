+++
title = "Coproducts (Disjoint Unions)"
slug = "09162022162129-coproducts-disjoints"
tags = ["summary", "category", "theory", "sets", "union", "archive"]
description = "Exploration on the disjoint union of sets."
rss_title = "Coproducts (Disjoint Unions)"
rss_description = "Exploration on the disjoint union of sets."
rss_pubdate = Date(2022, 9, 16)
+++



Coproducts (Disjoint Unions)
=========

**Date:** September 16 2022

**Summary:** Exploration on the disjoint union of sets.

**Keywords:** ##summary #category #theory #sets #union #archive

Bibliography
==========

David Spivak, Category Theory for Scientists, Old Version. 2013.

Table of Contents
=========

\toc

### Reading Motivation

To learn and understand the concept of coproducts within the context of category theory. Also, I came across the symbolic notation for what disjoint unions are and wanted to understand what the notation fully meant.

### Disjoint Union of Sets Intuition

To build an intuitive sense of what a disjoint union is, consider the following.

Given two sets, $X = \{a, b, c, d\}$, $Y = \{1, 2, 3\}$, the coproduct of these sets would be: 

$$
X \coprod Y := \{a, b, c, d, 1, 2, 3\}
$$

This also is referred to as the "disjoint union of sets". Although, it is important to note that an important aspect of this notation above is missing from the coproduct which will be explained in the section on a [coproduct of a set and itself](/#coproduct-of-a-set-and-itself).

### Coproduct of a Set and Itself

If given set $X = \{a, b, c, d\}$, the coproduct of $X$ and itself would look like this:

$$
X \coprod X \cong \{i_{1}a, i_{1}b, i_{1}c, i_{1}d, i_{2}a, i_{2}b, i_{2}c, i_{2}d\}
$$

In this case, $i_{1}$ and $i_{2}$ are unique inclusion functions that map each set in a coproduct to its disjoint union. The inclusion functions in my opinion, act as a sort of metadata that helps one know where elements of a disjoint union comes from.

> NOTE: The author, David Spivak, in *Category Theory for the Sciences* presented the above notation for a coproduct of $X$ and itself.  Personally, I found this notation very confusing and feel the formal set theory definition explained in the [section on the set theory definition of a coproduct](/#set-theory-definition) to be more useful here.  If we revisited the operation $X \coprod X$, I am more inclined to write the problem and solution as follows:
>
> Let $X = X_{1} = X_{2}$, the value of $X_{1} \coprod X_{2}$ is:  $X_{1} \coprod X_{2} \cong \{(a, 1), (b, 1), (c, 1), (d, 1), (a, 2), (b, 2), (c, 3), (d, 4)\}$


### Set Theory Definition

This big honking formulation is the formal set theoretic definition of a coproduct:

$$
\bigsqcup_{i \in I} A_{i} = \bigcup_{i \in I} \{(x, i): x \in A_{i}\}
$$

What this says loosely is that given a [family of sets](/09302022033236-family-sets.md) $A$ indexed by the [index set $I$](/09302022040126-indexed-sets.md), a coproduct is a set that enumerates every element in $A_{i}$ with its associated set. Referencing the [example on a coproduct of a set and itself](/#coproduct-of-a-set-and-itself):

Given: $X = \{a, b, c, d\}$

Let $X = X_{1} = X_{2}$, the value of $X_{1} \coprod X_{2}$ is: 

$$
X_{1} \coprod X_{2} \cong \{(a, 1), (b, 1), (c, 1), (d, 1), (a, 2), (b, 2), (c, 3), (d, 4)\}
$$

The coproduct is a set which enumerates every element in both set $X_{1}$ and $X_{2}$ as a tuple with an associated index to say what set this element originated from (i.e. $(a, 1)$ is the same $a$ from set $X_{1}$).

### Notation in Category Theory

It is important to make clear that in category theory, these two syntaxes are seen:

$$
\coprod_{i \in I} X_{i}
$$

and $\bigsqcup_{i \in I} X_{i}$

Both refer to a disjoint union and both can be read as "the disjoint union of the family of sets $X_{i}$ indexed by the index set, $I$." Here, when we say ["family of sets", they can either be a "set of subsets over a set $X$" or a "set of sets $X$ where each set could be independent of one another."](//09302022033236-family-sets.md)
## How To Cite

 Zelko, Jacob. _Coproducts (Disjoint Unions)_. [https://jacobzelko.com/09162022162129-coproducts-disjoints](https://jacobzelko.com/09162022162129-coproducts-disjoints). September 16 2022.
## References:
## Discussion: 

{{ addcomments }}
