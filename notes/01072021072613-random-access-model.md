+++
title = "Random Access Machine (RAM) Model"
slug = "01072021072613-random-access-model"
tags = ["zettel", "random", "access", "machine", "model", "archive"]
description = "Modeling computational actions as single step actions"
rss_title = "Random Access Machine (RAM) Model"
rss_description = "Modeling computational actions as single step actions"
rss_pubdate = Date(2021, 1, 7)
+++



Random Access Machine (RAM) Model
=========

**Date:** January 7 2021

**Summary:** Modeling computational actions as single step actions

**Keywords:** ##zettel #random #access #machine #model #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

**Random Access Machine (RAM) Model:** instructions are executed contiguously without concurrency. [1]

### Properties of RAM

#### Step Execution of Times

RAM concerns common real-world instructions executed at constant times: 

1. Arithmetic:

      * Add
      * Subtract
      * Multiply
      * Divide
      * Remainder
      * Floor
      * Ceiling
2. Data Movement

      * Loading
      * Storing
      * Copying
3. Control flow 

      * Conditionals and unconditional branches
      * Subroutine calls
      * Returns

#### Data Types

  * The RAM model concerns integers and floating points for real number representation.
  * A limit on the size of each word of data is assumed.
  * The memory hierarchy (i.e. model caches or virtual memory on modern computers) is not modeled.

### Algorithmic Analysis within the RAM Model

**Algorithm analysis:** predicting the resources an algorithm requires.Computational time is what is commonly measured. Memory, hardware, or bandwidth are sometimes also analyzed. [1]

**Running time:** the number of basic operations executed in an algorithm. In the RAM model, each executed line takes the constant time ci.

Generally, time taken by an algorithm grows in proportion to the size of the input. [1] Definitions for input size depend on what is studied:

  * The number of items in the input
  * The total number of bits needed to represent the input in binary notation
  * Numbers of vertices and edges in a graph

## References

## References

[1] T. H. Cormen, Ed., Introduction to algorithms, 3rd ed. Cambridge, Mass: MIT Press, 2009.
## Discussion: 

{{ addcomments }}
