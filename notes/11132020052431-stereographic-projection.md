@def title = "Stereographic Projection"
@def slug = "11132020052431-stereographic-projection"
@def tags = ["zettel", "stereographic", "projection", "linearalgebra", "math", "archive"]
@def description = "A small note on the stereographic projection method"

@def rss_title = "Stereographic Projection"
@def rss_description = "A small note on the stereographic projection method"
@def rss_pubdate = Date(2020, 11, 12)


Stereographic Projection
=========

**Date:** November 12 2020

**Summary:** A small note on the stereographic projection method

**Keywords:** ##zettel #stereographic #projection #linearalgebra #math #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Note Linked From:

  * [NeuriViz Project](/10152020223819-neuriviz-project.md) - An on-going experiment into developing performant neuroscientific visualizations via Julia.
  * [NeuriViz Project Notes](/10182020030856-neuriviz-research-notes.md)

---

Stereographic projection is used to project a sphere to a 2D plane.  The algorithm in Cartesian coordinates looks like this:

$$
[1] \ (X, Y) = (\frac{x}{1 - z}, \frac{y}{1 - z})
$$

$$
[2] \ (X, Y, Z)=\left(\frac{2 X}{1+X^{2}+Y^{2}}, \frac{2 Y}{1+X^{2}+Y^{2}}, \frac{-1+X^{2}+Y^{2}}{1+X^{2}+Y^{2}}\right)
$$

## References

## References
## Discussion: 

{{ addcomments }}