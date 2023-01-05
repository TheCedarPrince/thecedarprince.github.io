+++
title = "Dynamic Functional Connectivity"
slug = "12282020003106-dynamic-functional-connectivity"
tags = ["zettel", "brain", "dynamic", "functional", "connectivity", "time", "dfc", "archive"]
description = "The brain exhibiting changes to functional activity over time."
rss_title = "Dynamic Functional Connectivity"
rss_description = "The brain exhibiting changes to functional activity over time."
rss_pubdate = Date(2020, 12, 27)
+++



Dynamic Functional Connectivity
=========

**Date:** December 27 2020

**Summary:** The brain exhibiting changes to functional activity over time.

**Keywords:** ##zettel #brain #dynamic #functional #connectivity #time #dfc #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

Dynamic functional connectivity refers to functional connectivity changing over a short time.  The primary tool for analyzing DFC is [fMRI](/12282020003750-functional-mri.md). [1]

DFC is related to a variety of different neurological disorders, and has been suggested to be a more accurate representation of functional brain networks.

Functional networks of the brain fluctuate on the scale of seconds to minutes. The changes are generally movements from one short term state to another, rather than continuous shifts. [2]

There exist a few different types of stability in the kinds of brain analysis. [3] Here are a few with there associated descriptions:

  * Dynamic functional activity: shown a distinct hierarchical organization of the networks of the brain.

  * Bilaterally symmetric regions: most stable form of connectivity in the brain

  * Direct anatomical connection: similar to bilaterally symmetric regions.

  * Steady state functional connectivity: have less temporal stability than anatomical connections.

[Sliding window analysis](/11302020054836-sliding-window-analysis.md) is most common for functional connectivity and was first introduced in 2009. [4] Sliding window analysis is performed on DFC data by conducting analysis on a set number of scans in an fMRI session. The number of scans is the length of the sliding window.  The defined window is then moved a certain number of scans forward in time and additional analysis is performed.  The movement of the window is usually referenced in terms of the degree of overlap between adjacent windows. Data from sliding window analysis generally must be compared between two different groups to prove accuracy.

THOUGHT: This is very similar to analysis with [exponential smoothing](/03272020064312-exponential-smoothing.md) or ["salt-and-pepper" filtering](/04252020024813-median-filtering.md) and reminiscent of convolution filtering.

## References

## References

[1] Wikipedia contributors, “Dynamic Functional Connectivity — Wikipedia, The Free Encyclopedia,” 2020.

[2] R. M. Hutchison et al., “Dynamic functional connectivity: Promise, issues, and interpretations,” Neuroimage, vol. 80, pp. 360–378, 2013.

[3] W. Majeed, M. Magnuson, and S. D. Keilholz, “Spatiotemporal dynamics of low frequency fluctuations in BOLD fMRI of the rat,” J. Magn. Reson. Imaging Off. J. Int. Soc. Magn. Reson. Med., vol. 30, no. 2, pp. 384–393, 2009.

[4] U. Sakoglu and V. Calhoun, “Dynamic windowing reveals task-modulation of functional connectivity in schizophrenia patients vs healthy controls,” in Proc. Intl. Soc. Mag. Reson. Med, 2009, vol. 17, p. 3675.
## Discussion: 

{{ addcomments }}
