@def title = "Timing of State and Territorial COVID-19 Stay-at-Home Orders and Changes in Population Movement — United States, March 1–May 31, 2020"
@def slug = "01072021062915-mobility-patterns-gtri"
@def tags = ["bibliography", "covid", "population", "dynamics", "gtri", "cdc", "mmwr", "dataset", "agriculture", "rural", "urban", "archive"]
@def description = "How population mobility was affected by US mandates for stay-at-home orders"

@def rss_title = "Timing of State and Territorial COVID-19 Stay-at-Home Orders and Changes in Population Movement — United States, March 1–May 31, 2020"
@def rss_description = "How population mobility was affected by US mandates for stay-at-home orders"
@def rss_pubdate = Date(2021, 1, 7)


Timing of State and Territorial COVID-19 Stay-at-Home Orders and Changes in Population Movement — United States, March 1–May 31, 2020
=========

**Date:** January 7 2021

**Summary:** How population mobility was affected by US mandates for stay-at-home orders

**Keywords:** ##bibliography #covid #population #dynamics #gtri #cdc #mmwr #dataset #agriculture #rural #urban #archive

Bibliography
==========

A. Moreland et al., "Timing of State and Territorial COVID-19 Stay-at-Home Orders and Changes in Population Movement — United States, March 1–May 31, 2020," MMWR Morb. Mortal. Wkly. Rep., vol. 69, no. 35, pp. 1198–1203, Sep. 2020, doi: 10.15585/mmwr.mm6935a2.

Table of Contents
=========

\toc

### Methods and Materials

Changes in population movement based on stay-at-home orders between March 1–May 31, 2020 given by all 50 states, the District of Columbia, and five U.S. territories were examined.

#### Classifying Stay-at-Home Orders

Coding of orders was based solely on the legal language in each state or territorial order. Stay-at-home orders were assigned a mutually exclusive category based on this language:

1. All required (language examples: persons "shall," "must," or "are directed to")
2. Applied to persons in specific jurisdictions' locations (language examples: persons "shall," "must," or "are directed to")
3. Required for individuals > 65 years or with underlying conditions
4. Mandatory for individuals > 65 years or with underlying conditions in specific jurisdictions' locations
5. Not required but advised to stay home (language examples: persons "should," "are encouraged to," or "are urged to")
6. Jurisdictions that did not issue an order were coded as having no state- or territory-issued order

#### Determining Time Windows

Given a state "s" that issues a stay-at-home order at date "t", pre- and post-order windows for each county, "c", in a state can be defined. c's preorder window contains movement values, m, during the time period before, t. The postorder window contains m values during the time period after t. Each county's preorder window serves as a county- and COVID-specific baseline. Small time values observed during these periods reflect county-specific invariants and impacts of the pandemic on behavior in the absence of state- or territory-issued community mitigation policies. ***QUESTION:** What is a sufficiently small value of n-days (or time period before and after t)?* ***QUESTION:** What is a county-specific invariant?*

Order index date types:

1. Start of each state or territorial stay-at-home order for each jurisdiction's counties
2. Waning or end of each state or territorial stay-at-home order for each jurisdiction's counties
3. Date of the first state stay-at-home order
4. Date of the first termination of a state stay-at-home order

#### Analyzing for Changes in Population Movement Patterns

Counties were broken into rural-urban categories to ensure groupings of counties with similar population sizes. Box plots were constructed for each category to examine the distribution of county mean percentages of devices at home during the pre- and postorder periods associated with each index date. Movement values following a normal distribution was not assumed for all counties and periods.  A clustered Wilcoxon signed rank test was then performed, with counties as clusters, on the constituent counties' median pre- and post-order values associated with each index date. A lower-tailed test was used for dates regarding the start of regional mandates. An upper-tailed test was used for dates recording the end of regional mandates. Strata-level statistical significance was assessed at the 99% confidence level (alpha = 0.01). *Dataset used: [The U.S. Department of Agriculture's Rural-Urban Continuum Codes](/https://www.ers.usda.gov/data-products/rural-urban-continuum-codes/documentation/) are used to stratify counties in this analysis* **QUESTION:** What is a "clustered Wilcoxon signed rank test"?_

Population movement was inferred via the percentage of individual devices reported each day that were home for each county. A 7-day rolling average was used to smooth each county's pre- and postorder time series values ***QUESTION:** I wonder how good a metric this observation serves as a proxy of measuring population movement?*

### Discussion

#### General Insights

Regions which issued stay-at-home mandates saw general declines in population movement. At the same time as the first state relaxed their mandate, regions that had not relaxed their mandates saw increased population movement. Stay-at-home orders can reduce activities associated with community spread of COVID-19. This includes population movement and external person-to-person contact.

#### Limitations of this analysis

1. Device coverage correlates with US pop density.

However, certain regions or groups might be inequitably represented. ***QUESTION:** How does relative device coverage largely correlate with US pop density?*

2. People may have multiple mobile devices and might take any number of them when they leave home.
3. The clustered Wilcoxon signed rank test is used with counties as clusters.

This is because a county's median pre- and postorder values are paired comparisons. Possible spatial dependence between counties wasn't addressed.

4. The report does not account for nationwide protests affects on mobility patterns.
5. The only relationship analyzed was between stay-at-home orders and population movement.

## References

## References
## Discussion: 

{{ addcomments }}
