+++
title = "Brain Imaging Data Structure (BIDS)"
slug = "11052020174635-brain-imaging-structure"
tags = ["zettel", "bids", "neuroscience", "brain", "imaging", "archive"]
description = "An overview of the BIDS style for Brain Imaging Data."
rss_title = "Brain Imaging Data Structure (BIDS)"
rss_description = "An overview of the BIDS style for Brain Imaging Data."
rss_pubdate = Date(2020, 11, 5)
+++



Brain Imaging Data Structure (BIDS)
=========

**Date:** November 5 2020

**Summary:** An overview of the BIDS style for Brain Imaging Data.

**Keywords:** ##zettel #bids #neuroscience #brain #imaging #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Purpose

A core problem regarding reproducible neuroscience is that there has been no widely adopted standard for describing data from an imaging experiment. This renders sharing and reusing data difficult.[1] Furthermore, it complicates automation and quality assurance.

The BIDS format was inspired by the work done by the [OpenNeuro](https://openneuro.org/) community to easily share and structure their data regarding pertaining to neuroscientific research. It enables development of automated tools to operate on datasets. [1] Common standards minimize curation! Helps those not involved to effectively understand the data.

### Specific data specifications:

  * Raw data derivatives should be separate from source data.
  * The NIfTI image file format was selected as it is the most ubiquitous across neuroimaging software.BIDS requires users to provide additional meta information in a sidecar JSON file.
  * Metadata is generally stored as an array in tab-delimited values.
  * JSON files are used for storing key/value pairs.

The key names follow a fixed dictionary in the specification.

### Topics

Neuroimaging: brain imaging to gain quantitative brain data. [1]

Error reduction: errors attributed to misunderstanding data.

Provenance: information regarding actions or those involved in producing an object. It can be used to form assessments about its valour.
## How To Cite

 Zelko, Jacob. _Brain Imaging Data Structure (BIDS)_. [https://jacobzelko.com/11052020174635-brain-imaging-structure](https://jacobzelko.com/11052020174635-brain-imaging-structure). November 5 2020.
## References

[1] K. J. Gorgolewski et al., “The brain imaging data structure, a format for organizing and describing outputs of neuroimaging experiments,” Sci Data, vol. 3, no. 1, p. 160044, Dec. 2016, doi: 10.1038/sdata.2016.44.
## Discussion: 

{{ addcomments }}
