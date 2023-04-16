+++
title = "100 Million Patients: Julia for International Health Studies"
slug = "01152023193153-juliacon-study-proposal"
tags = ["archive", "juliacon", "health", "equity", "mental", "juliahealth"]
description = "JuliaCon proposal for giving a full length talk on using Julia in an international healthcare study"
rss_title = "100 Million Patients: Julia for International Health Studies"
rss_description = "JuliaCon proposal for giving a full length talk on using Julia in an international healthcare study"
rss_pubdate = Date(2023, 1, 15)
+++



100 Million Patients: Julia for International Health Studies
=========

**Date:** January 15 2023

**Summary:** JuliaCon proposal for giving a full length talk on using Julia in an international healthcare study

**Keywords:** #archive #juliacon #health #equity #mental #juliahealth

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Original Submission

#### Abstract

This talk explores the use of Julia in a novel observational health research study that explores health equity and mental health in ~100 million patients in an international collaborative effort across more than 4 countries. Contributions and efforts within the JuliaHealth and adjacent communities have made working with this data possible. The approaches and results shared will be valuable for potential researchers and will open new frontiers for high performance computing and health analytics.

#### Proposal

Conducting health research studies at scale to understand the health of specific communities and subpopulations has long been a struggle. This has been due to a variety of issues, such as a lack of international standards in the structure of electronic health records, patient claims data, and diagnoses. Moreover, the investigation of questions related to the topic of health equity (that is, the skewed distribution of health resources or services to various subpopulations seeking healthcare) has been largely stalled due to these problems.

In a previous talk I gave, [Using Julia for Observational Health Research](https://www.youtube.com/watch?v=5XsWUZX6lFM), I presented early work on the success of using Julia within the space of observational health research in utilizing the [OMOP Common Data Model](https://jacobzelko.com/02082021170353-cdm-standardized-tables/). In that previous work, I conducted a pilot study to characterize prevalence rates in mental health care for [intersectional subpopulations](https://jacobzelko.com/11042022141714-what-intersectionality-theory/#workable_definitions_of_intersectionality) suffering from bipolar disorder, depression, and/or suicidality. This work utilized novel tooling and approaches created within Julia to successfully analyze data from ~2.5 million Medicaid subscribers within the U.S. state of Georgia. This work earned the [highest awards at the top observational health research venue](https://www.ohdsi.org/2022-collaborator-showcase), drove another successful grant proposal, and resulted in [multiple invited talks](https://www.nahdo.org/conference/2022/agenda). Buoyed by the interest and success of this pilot work, my team and I have moved this project into the next phase: the examination of more than 100 million patients from more than 4 countries across the globe.

In this talk, I will present advances within the JuliaHealth community and the broader Julia ecosystem that have made possible such large scale and federated analyses. In particular, novel JuliaHealth tools such as [OMOPCDMCohortCreator.jl](https://juliahealth.org/OMOPCDMCohortCreator.jl/) will be highlighted to show how to analyze "big" [real world data](https://jacobzelko.com/10282021140730-real-world-evidence/#united_states_food_and_drug_administration_definitions), how using Julia can be of huge benefit within this space, and how Julia community members could start using these tools for their own research. As this study now takes place across multiple countries, time will also be spent discussing how Julia lends itself very well to robust analyses using literate programming tools such as [Quarto](https://quarto.org) or [Weave.jl](https://github.com/JunoLab/Weave.jl) and versioning processes through [DrWatson.jl](https://github.com/JuliaDynamics/DrWatson.jl) or [Data Version Control](https://github.com/iterative/dvc), which can be utilized to handle each country's specific needs. Additionally, I will spend some time discussing issues encountered (both technical and anthropological), ways that the Julia ecosystem could potentially grow to support future work in this research domain, and opportunities for Julia users to get involved. Finally, I will share my personal thoughts on what open questions there are to be addressed in observational health research and how Julia can be a tool to address public health questions and provide insight into questions of health disparities.

In conclusion, this talk will highlight the real world use of Julia in large-scale health research studies built on real world data. Moreover, it will show the potential of the various ecosystems within Julia to analyze and tackle complex questions within health equity. Through this talk, I invite future Julia users and researchers to join me in pursuing the potential of Julia within the space of observational health research.
## How To Cite

 Zelko, Jacob. _100 Million Patients: Julia for International Health Studies_. [https://jacobzelko.com/01152023193153-juliacon-study-proposal](https://jacobzelko.com/01152023193153-juliacon-study-proposal). January 15 2023.
## References:
## Discussion: 

{{ addcomments }}
