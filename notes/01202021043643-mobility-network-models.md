+++
title = "Mobility Network Models of COVID-19 Explain Inequities and Inform Reopening"
slug = "01202021043643-mobility-network-models"
tags = ["bibliography", "places", "interest", "policy", "bipartite", "graphs", "counterfactual", "mobility", "models", "archive"]
description = "How estimations of mobility patterns were used to estimate infections and identify disparities in Census Block Groups"
rss_title = "Mobility Network Models of COVID-19 Explain Inequities and Inform Reopening"
rss_description = "How estimations of mobility patterns were used to estimate infections and identify disparities in Census Block Groups"
rss_pubdate = Date(2021, 1, 19)
+++



Mobility Network Models of COVID-19 Explain Inequities and Inform Reopening
=========

**Date:** January 19 2021

**Summary:** How estimations of mobility patterns were used to estimate infections and identify disparities in Census Block Groups

**Keywords:** ##bibliography #places #interest #policy #bipartite #graphs #counterfactual #mobility #models  #archive

Bibliography
==========

S. Chang et al., "Mobility network models of COVID-19 explain inequities and inform reopening," Nature, vol. 589, no. 7840, pp. 82–87, Jan. 2021, doi: 10.1038/s41586-020-2923-3.

Table of Contents
=========

\toc

Iterative proportional fitting [1] was used to make POI –> [CBG](/01202021043013-census-groups.md) networks from SafeGraph data. SafeGraph mobility data was validated against Google mobility data.

*THOUGHTS: What is iterative proportional fitting?*

Model fits observed daily case counts from 8 March to 9 May 2020

### Points of Interest

POI hourly infection rate determined via:

1. Area
2. Median visit duration
3. Time-varying density of infectious individuals

Three free time-invariant parameters that scale:

1. POI transmission rates
2. CBG transmission rates
3. Initial amount of exposed individuals

Points of interest for this paper are such as: 

1. Restaurants
2. Grocery stores
3. Religious establishments

Certain categories of POIs contributed far more to infections like restaurants and hotels The model predicted time-dependent variation - likely due to policy change.

Model can identify at-risk populations and determined that disadvantaged racial socioeconomic groups face higher rates of infection.

*THOUGHTS: This conclusion seems very obvious – of course people are going to have to move and keep doing things.*

### Counterfactual Mobility Network

Counterfactual mobility network creation:

1. Scaling magnitude of mobility reduction down
2. Positioning the model at different times
3. Apply model to counterfactual networks to simulate infection trajectories.

*THOUGHTS: What is a counterfactual network? I wonder in what sense they are using the word "counterfactual"?*

### Limitations

Limitations of dataset:

1. Some populations missing
2. All POIs not ID'd
3. Does not break up CBGs

The model is sparse.  It does not include all real-world disease transmission variables.

### Conclusions

COVID-19 superspreader events [2]–[5] motivate risk modeling. Infection rates among different people groups [6]–[12] require modeling effects of the virus on disadvantaged groups.

The observed disparity was driven by a few POIs. Majority of infections from small fraction of superspreader POIs.

"Probably because they cannot work from home as easily." [10]

*THOUGHTS: It almost feels insulting that after this entire analysis, there is only one footnote on the topic of what people actually experience. On the flip side, I can empathize where a research group could lack time and/or means to contextualize results. Either way, it feels ripe to build on top of this work/paper to better examine the actual effects of policy adjustments and life changes.*

CBGs with fewer white residents had higher predicted infection risks.

*THOUGHTS: Seems somewhat odd? This is interesting to me in how they keep bringing up race or economic status as a variable, but never fully commit to an investigation. Feels really weird to talk about issues without actually addressing them.*

Mobility data showed average grocery store visits from lower-income CBGs had 59% more hourly visitors per square foot. Median metro area data showed they stayed 17% longer.
## How To Cite

 Zelko, Jacob. _Mobility Network Models of COVID-19 Explain Inequities and Inform Reopening_. [https://jacobzelko.com/01202021043643-mobility-network-models](https://jacobzelko.com/01202021043643-mobility-network-models). January 19 2021.
## References

[1] W. E. Deming and F. F. Stephan, “On a least squares adjustment of a sampled frequency table when the expected marginal totals are known,” Ann. Math. Stat., vol. 11, no. 4, pp. 427–444, 1940.

[2] Q. Bi et al., “Epidemiology and transmission of COVID-19 in 391 cases and 1286 of their close contacts in Shenzhen, China: A retrospective cohort study,” Lancet Infect. Dis., 2020.

[3] S. Y. Park et al., “Early release-coronavirus disease outbreak in call center, south korea,” 2020.

[4] D. Adam et al., “Clustering and superspreading potential of severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) infections in Hong Kong,” 2020.

[5] A. Endo, S. Abbott, A. J. Kucharski, S. Funk, et al., “Estimating the overdispersion in COVID-19 transmission using outbreak sizes outside China,” Wellcome Open Res., vol. 5, no. 67, p. 67, 2020.

[6] M. Chowkwanyun and A. L. Reed Jr, “Racial health disparities and Covid-19—caution and context,” N. Engl. J. Med., 2020.

[7] C. W. Yancy, “COVID-19 and african americans,” Jama, 2020.

[8] A. van Dorn, R. E. Cooney, and M. L. Sabin, “COVID-19 exacerbating inequalities in the US,” Lancet Lond. Engl., vol. 395, no. 10232, p. 1243, 2020.

[9] M. Pareek et al., “Ethnicity and COVID-19: An urgent public health research priority,” The Lancet, vol. 395, no. 10234, pp. 1421–1422, 2020.

[10] R. Reeves and J. Rothwell, “Class and COVID: How the less affluent face double risks,” Retrieved March, vol. 30, p. 2020, 2020.

[11] S. Garg et al., “Hospitalization rates and characteristics of patients hospitalized with laboratory-confirmed coronavirus disease 2019—COVID-NET, 14 States, March 1–30, 2020,” Morb. Mortal. Wkly. Rep., vol. 69, no. 15, p. 458, 2020.

[12] C. Wilson, “These graphs show how COVID-19 is ravaging New York City’s low-income neighborhoods,” Time, 2020.
## Discussion: 

{{ addcomments }}
