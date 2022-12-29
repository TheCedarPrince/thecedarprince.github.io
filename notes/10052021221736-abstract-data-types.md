@def title = "Abstract Data Types"
@def slug = "10052021221736-abstract-data-types"
@def tags = ["summary", "data", "data", "abstract", "types", "archive"]
@def description = "An overview and summary on what are abstract data types and what kinds exist"

@def rss_title = "Abstract Data Types"
@def rss_description = "An overview and summary on what are abstract data types and what kinds exist"
@def rss_pubdate = Date(2021, 10, 5)


Abstract Data Types
=========

**Date:** October 5 2021

**Summary:** An overview and summary on what are abstract data types and what kinds exist

**Keywords:** ##summary #data #data #abstract #types #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Definitions

  * **Abstract Data Types** - the description of a data type based on its associated behaviors and operations.

The details of Abstract Data Types are left vague (i.e. abstract) so that various languages can make their own implementations.

  * **Data Structures** - the concrete implementation details of a given data type.

### Characteristics

  * Allows an implementer to focus on the functionality requirements as opposed to the logistics in the language of implementation

### Abstract Data Types

#### List Abstract Data Type

**List Abstract Data Type** - is a sequence of data values accessible via indexing.

##### Minimum Required Operations

  * `addAtIndex(int index, T data)` - adds `data` of generic type `T` to a list at a specified `index` of type `int`.

Any data at an index of `i` where it is $\geq$ the value of `index`, has a new value of `i + 1` to make space for the inserted `data`.

  * `removeAtIndex(int index)` - removes `data` at a specified `index` in a list.

Any data with an index `i` where `i` is $>$ `index` has a new index of `i - 1` to "shrink" the list of objects.

  * `get(int index)` - returns `data` at a specific `index`.
  * `isEmpty()` - returns if the list is empty or not.
  * `clear()` - empties list; resets list back to when it had no data.
  * `size()` - returns the number of `data` stored in list.

## References

## References
## Discussion: 

{{ addcomments }}
