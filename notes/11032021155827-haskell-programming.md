+++
title = "Notes on Programming in Haskell"
slug = "11032021155827-haskell-programming"
tags = ["syntax", "summary", "haskell", "programming", "languages", "archive"]
description = "My notes on an overview and summary on how to use Haskell"
rss_title = "Notes on Programming in Haskell"
rss_description = "My notes on an overview and summary on how to use Haskell"
rss_pubdate = Date(2021, 11, 3)
+++



Notes on Programming in Haskell
=========

**Date:** November 3 2021

**Summary:** My notes on an overview and summary on how to use Haskell

**Keywords:** #syntax ##summary #haskell #programming #languages #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Packages

[Prelude](https://jacobzelko.com/11032021171123-prelude-haskell-library) - Haskell's Standard Library

### Functions

All functions are [pure](https://jacobzelko.com/11082021225843-pure-functions) within Haskell. This means that the same result is always produced with no side effects given the same input to a Haskell function.

#### Ar

### Haskell Type System

Except only in very seldom cases, type annotations are optional in Haskell.

#### `Bool`

A two element set of `True` and `False`.

#### `Char`

A set of all Unicode characters.

#### `String`

A synonym for an infinite list of `Char`'s.

#### `()`

A dummy value where there is only one instance of it ever. It is pronounced unit.

```haskell
-- Unit typing example

-- Function declaration
f44 :: () -> Integer

-- Function definition
f44 () = 44

-- Function invocation
f44 () -- Returns the value 44
```

#### Type Coercion

Haskell provides `unsafeCoerce` to bypass the type system.

### Syntax

#### Types

All concrete types start with a capital letter. Names of type variables start with a lowercase letter.

#### Functions

A function type is created by putting an arrow between two types.

```haskell
f :: foo -> bar
```

A function definition uses the name of the function and formal parameters. The body of a function follows an equals sign. Furthermore, the body of a function is always an expression.

One of the strangest quirks about Haskell functions is that arguments are neither surrounded by parentheses nor separated by commas.

##### Defining Function in `ghci`

```
-- Defining a function within ghci
-- Requires the use of multiple lines as denoted
-- by :{ ... :} 
« Prelude » λ: :{
Prelude| add :: Integer -> Integer -> Integer -- Function declaration
Prelude| add x y = x + y -- Function definition
Prelude| :}

« Prelude » λ: (add 5 3) -- Compute sum of two numbers
8
```

##### Defining Function in a Script

```haskell
-- Creating function declaration
add :: Integer -> Integer -> Integer

-- Creating function definition
add x y = x + y

-- Compute sum of two numbers
add 5 3
```

##### Variable Wildcards

Arguments can be discarded with a wildcard by the following notation:

```haskell
fInt :: Integer -> ()
fInt _ = ()
```

#### Function Composition

Functions can be composed by putting a period between them (or a Unicode circle, "◦"):

```haskell
-- Define two functions:
f1 :: A -> B
f2 :: B -> C

-- Compose them together:
f1 . f2

-- Or use alternative composition syntax:
f1 ◦ f2
```

#### Double colons

In Haskell, a double colon means, "has type of..."

```haskell
f :: foo -> bar
```

#### Infix Operators

Any infix operator can be turned into a two-argument function by surrounding them with parentheses:

```haskell
"Hello " ++ "world!"
```

Can be rewritten as:

```haskell
(++) "Hello " "world!"
```

### Equality

#### Functional Equality

Haskell enables you to express equality of functions:

```haskell
mappend = (++)
```

This is also known as point-free equality as the arguments to these functions are not defined.

#### Extensional Equality

Haskell defines extensional equality loosely where

```haskell
mappend s1 s2 = (++) s1 s2
```

is saying that the output of the function of the left is equivalent to the output of the function on the right. This is also known as point-wise equality as the arguments (points) are defined.
## How To Cite

 Zelko, Jacob. _Notes on Programming in Haskell_. [https://jacobzelko.com/11032021155827-haskell-programming](https://jacobzelko.com/11032021155827-haskell-programming). November 3 2021.
## References:
## Discussion: 

{{ addcomments }}
