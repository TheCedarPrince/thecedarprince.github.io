+++
title = "Causality and Information Retrieval"
slug = "03212020002114-causality-information"
tags = ["zettel", "justintime", "informationretrieval", "jitrs", "causality", "reasoning", "ai", "agi", "archive"]
description = "Thoughts on why I think JITRs are inferior to causal models."
rss_title = "Causality and Information Retrieval"
rss_description = "Thoughts on why I think JITRs are inferior to causal models."
rss_pubdate = Date(2020, 3, 21)
+++



Causality and Information Retrieval
=========

**Date:** March 21 2020

**Summary:** Thoughts on why I think JITRs are inferior to causal models.

**Keywords:** ##zettel #justintime #informationretrieval #jitrs #causality #reasoning #ai #agi #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

I think Remembrance and Just In-Time Information Retrieval Agents (nicknamed JITRs) [1], [2] partially – maybe by about 75% – miss the point of truly aiding the human mind. On the surface, these tools come close to mimicking the chain of sub-thoughts and actions associated with a thought. A chain of thought being described in the following example: 

```
Thought: I wonder if I need my umbrella for today?
Goal: Find out if I need my umbrella for the day.

Sub-Thought 1: I wonder what the weather is like for today?
Sub-Thought 2: I wonder what the probability of rain is for today?
Sub-Thought 3: I wonder where I should find this information?

Action 1: Person searches for weather forecast on internet.
Action 2: Person finds local weather forecast.
Action 3: Person identifies chance of rain.

Information Retrieved: There is a 75% chance of rain today.

Conclusion: I need my umbrella
```

However, JITRs best option is to guess at what the eventual end goal of a chain of thought is but it has to forego guessing the sub-thoughts leading to the desired conclusion. I think that is why JITRs have found use, but I think it is the wrong problem to address. 

In practice it is a very different approach, but I think to use causal modeling similar to what Judea Pearl posits is the better approach [3], [4].

Topically a JITR could watch you begin searching for allergies on a computer. Immediately, it delivers you results on common allergies. This could be useful but still is not the *most* useful as it is just guessing based on the search and some of the context of your search query. In actuality, you were trying to find information about the pollen level of your area for the day and if you should take your allergy medication prophylactically.

Instead, a causal agent might function similarly at first but instead of giving you a list of allergies, gives you more concise information. The causal agent infers, based on some history it has of you, you are worried if you should take your allergy medication that day. Instead, the agent just gives you information on pollen levels throughout the week based on local weather reports.

Though one can argue that there is guessing at place in either situation I think the latter proves far more effective than the former approach.
## How To Cite

 Zelko, Jacob. _Causality and Information Retrieval_. [https://jacobzelko.com/03212020002114-causality-information](https://jacobzelko.com/03212020002114-causality-information). March 21 2020.
## References

[1] B. J. Rhodes and P. Maes, “Just-in-time information retrieval agents,” IBM Syst. J., vol. 39, no. 3.4, pp. 685–704, 2000, doi: 10.1147/sj.393.0685.

[2] B. J. Rhodes and T. Starner, “Remembrance Agent: A Continuously Running Automated Information Retrieval System,” p. 4.

[3] L. Fridman, “Judea Pearl: Causal Reasoning, Counterfactuals, Bayesian Networks, and the Path to AGI | MIT | Artificial Intelligence Podcast,” 11-Dec-2019. [Online]. Available: https://lexfridman.com/judea-pearl/. [Accessed: 21-Mar-2020].

[4] J. Pearl, Causality Models, Reasoning and Inference by Judea Pearl. 2009.
## Discussion: 

{{ addcomments }}
