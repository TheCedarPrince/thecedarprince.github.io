@def title = "Sliding Window Analysis"
@def slug = "11302020054836-sliding-window-analysis"
@def tags = ["zettel", "window", "analysis", "signal", "processing", "computerscience", "algorithm", "archive"]
@def description = "How sliding window analysis works and is implemented"

@def rss_title = "Sliding Window Analysis"
@def rss_description = "How sliding window analysis works and is implemented"
@def rss_pubdate = Date(2020, 11, 30)


Sliding Window Analysis
=========

**Date:** November 30 2020

**Summary:** How sliding window analysis works and is implemented

**Keywords:** ##zettel #window #analysis #signal #processing #computerscience #algorithm #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

![](11302020061716.png)

The way sliding window analysis works is to analyze each voxel across an axis and project it to a final array that does not contain the axis upon which analysis took place. In this picture, each [voxel](/11302020054820-voxel.md) across the z-axis at location `[1, 1]`, where `[1, 1]` is a `(x, y)` coordinate pair, is being summed up and divided by the number of values present to produce a simple mean. The voxels being summed are highlighted pink.

![](11302020062728.png)

As shown in the above picture, the algorithm then continues this process until the array determined by the `x` and `y` dimensions of the cube, in this case a `(3, 3)` array, is filled.

## References

## References:
## Discussion: 

{{ addcomments }}
