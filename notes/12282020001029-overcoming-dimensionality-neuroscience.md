+++
title = "Data Visualization in the Neurosciences: Overcoming the Curse of Dimensionality"
slug = "12282020001029-overcoming-dimensionality-neuroscience"
tags = ["bibliography", "neuroscience", "dataviz", "curse", "dimensionality", "visualization", "data", "science", "archive"]
description = "How to approach the dilemma of visualizing complex data in neuroscience."
rss_title = "Data Visualization in the Neurosciences: Overcoming the Curse of Dimensionality"
rss_description = "How to approach the dilemma of visualizing complex data in neuroscience."
rss_pubdate = Date(2020, 12, 27)
+++



Data Visualization in the Neurosciences: Overcoming the Curse of Dimensionality
=========

**Date:** December 27 2020

**Summary:** How to approach the dilemma of visualizing complex data in neuroscience.

**Keywords:** ##bibliography #neuroscience #dataviz #curse #dimensionality #visualization #data #science #archive

Bibliography
==========

E. A. Allen, E. B. Erhardt, and V. D. Calhoun, "Data Visualization in the Neurosciences: Overcoming the Curse of Dimensionality," Neuron, vol. 74, no. 4, pp. 603–608, May 2012, doi: 10.1016/j.neuron.2012.05.001.

Table of Contents
=========

\toc

### Methods

1,451 figures were examined from 288 neuroscience papers in 2010.

### Purpose

They investigated current practices in data visualization in the realm of neuroscience and offered potential improvements to better reveal data than hide it.

Using work by Howard Wainer, Allen and co developed questions that were used to determine the effectiveness of particular visualizations.  These were the questions they came up with:

1. Quantity of interest labeled?
2. Scale of the dependent variable indicated?
3. Measure of uncertainty displayed (as needed)?
4. Is the type of uncertainty (e.g., standard error bars or confidence intervals) defined in the figure or accompanying legend?

> *Interesting how they based it off of Wainer.  That paper on depicting error may be worth a read.*


### Ways to Reduce Complexity

Efficient method introduced to analyze rapidly changing functional patterns is by transforming fMRI [BOLD](https://jacobzelko.com/12282020020156-brain-biomarkers) data to point processes. [1], [2] Achieved by selecting peaks of the BOLD signal in each [voxel](https://jacobzelko.com/11302020054820-voxel). This reduction of data by > 95%, has been found very similar to inferences of functional connectivity from full signal analysis. [3], [4]

*QUESTION: What is a point process? Why is BOLD important?*

### Common Perceptions of Neuroscience Visualizations

Researchers may choose values for great visual appeal and easier interpretation. However, it reduces the analysis to a binary representation that suffers from the limitations of all-or-none hypothesis testing. [5]

Aesthetically pleasing brain image results are viewed more persuasive and credible than identical information presented in less appealing formats. [6], [7]

Effective data visualization communicates that the data displayed does contain some uncertainty and that it quantifies that uncertainty as it pertains to conclusions one would make off the visualization. [8] - *Thoughts by Howard Wainer*

#### Bar Plots

The usage of Bar Plots in neuroscience can certainly be beneficial but are not without their drawbacks:

**Pros of bar plots**

  * Easy to generate
  * Straightforward to comprehend
  * Efficiently contrast a large number of conditions in a small space.
  * Great for binary data samples that reflect successes

**Cons of bar plots**

  * Commonly used in scenarios where distance from zero is not meaningful
  * Doesn't show distributional information

### Key Takeaways

To better improve understanding of figures, integrating descriptions into the figure itself can:

  * Discourages misinterpretation
  * Lead to quicker understanding of figure
  * Additional annotation should not detract from figure

Dependent variables are more difficult to label when they represent abstract parameter estimates rather than directly measured quantities. Uncertainty is more challenging to render when data sets require error surfaces rather than error bars.  Displays should become increasingly informative regarding complex data in illustrating relationships that would not be well defined in tables or values alone.

Link to code in this paper: http://mialab.mrn.org/datavis

*QUESTION: One thing that I realize and think a lot about from this paper is the question of: how easy is it to represent this sort of additional information that tells more the story of the neuroscientific data? Obviously, the authors have expertise with making their own tools.  But what about for those who do not have them?*
## How To Cite

 Zelko, Jacob. _Data Visualization in the Neurosciences: Overcoming the Curse of Dimensionality_. [https://jacobzelko.com/12282020001029-overcoming-dimensionality-neuroscience](https://jacobzelko.com/12282020001029-overcoming-dimensionality-neuroscience). December 27 2020.
## References

[1] E. Tagliazucchi, M. Siniatchkin, H. Laufs, and D. R. Chialvo, “The voxel-wise functional connectome can be efficiently derived from co-activations in a sparse spatio-temporal point-process,” Front. Neurosci., vol. 10, p. 381, 2016.

[2] E. Tagliazucchi, R. Carhart-Harris, R. Leech, D. Nutt, and D. R. Chialvo, “Enhanced repertoire of brain dynamical states during the psychedelic experience,” Hum. Brain Mapp., vol. 35, no. 11, pp. 5442–5456, 2014.

[3] E. Tagliazucchi, P. Balenzuela, D. Fraiman, and D. R. Chialvo, “Criticality in large-scale brain fMRI dynamics unveiled by a novel point process analysis,” Front. Physiol., vol. 3, p. 15, 2012.

[4] E. Tagliazucchi, P. Balenzuela, D. Fraiman, P. Montoya, and D. R. Chialvo, “Spontaneous BOLD event triggered averages for estimating functional connectivity at resting state,” Neurosci. Lett., vol. 488, no. 2, pp. 158–163, 2011.

[5] L. L. Harlow, S. A. Mulaik, and J. H. Steiger, “What if there were no significance tests,” 1998.

[6] M. Keehner, L. Mayberry, and M. H. Fischer, “Different clues from different views: The role of image format in public perceptions of neuroimaging results,” Psychon. Bull. Rev., vol. 18, no. 2, pp. 422–428, 2011.

[7] D. P. McCabe and A. D. Castel, “Seeing is believing: The effect of brain images on judgments of scientific reasoning,” Cognition, vol. 107, no. 1, pp. 343–352, 2008.

[8] H. Wainer, “Depicting error,” Am. Stat., vol. 50, no. 2, pp. 101–111, 1996.
## Discussion: 

{{ addcomments }}
