+++
title = "Fiber Products (Pullbacks)"
slug = "10312022005339-fiber-product-pullback"
tags = ["summary", "fiber", "product", "pullback", "category", "theory", "archive"]
description = "An overview on fiber products (aka pullbacks) and their features within category theory"
rss_title = "Fiber Products (Pullbacks)"
rss_description = "An overview on fiber products (aka pullbacks) and their features within category theory"
rss_pubdate = Date(2022, 10, 30)
+++



Fiber Products (Pullbacks)
=========

**Date:** October 30 2022

**Summary:** An overview on fiber products (aka pullbacks) and their features within category theory

**Keywords:** ##summary #fiber #product #pullback #category #theory  #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Reading Motivation

Pullbacks are a central part to category theory so naturally, I would like to know more about them!

### Basics of a Fiber Product

Suppose we have the diagram of sets and functions:

X -f-> Z <-g- Y

Its fiber product is defined as:

$$
X{x}_{Z}Y := \{(x, w, y) | f(x) = w = g(y)\}
$$

Which has two projection functions: 

1. $$
    \pi_{1}: X {x}_{Z}Y \rightarrow X
    $$
2. $$
    \pi_{2}: X {x}_{Z}Y \rightarrow Y
    $$

How I would understand that, is by saying that

### Basics of the Pullback

Suppose we have the diagram of sets and functions:

W -pi*{1}-> X -f-> Z <-g- Y <-pi*{2}- W

The pullback of $X$ and $Y$ over $Z$ is any set $W$ for which we have an isomorphism W -approx-> X {x}_{Z} Y.  In this case, $W$ is the pullback.

## References

## References:
## Discussion: 

{{ addcomments }}
