+++
title = "Assessing Phenotype Definitions for Algorithmic Fairness"
slug = "08122022205622-assessing-phenotype-fairness"
tags = ["bibliography", "phenotype", "fairness", "metrics", "observational", "health", "research", "archive"]
description = "A possible workflow for assessing fairness in the context of observational health studies"
rss_title = "Assessing Phenotype Definitions for Algorithmic Fairness"
rss_description = "A possible workflow for assessing fairness in the context of observational health studies"
rss_pubdate = Date(2022, 8, 12)
+++



Assessing Phenotype Definitions for Algorithmic Fairness
=========

**Date:** August 12 2022

**Summary:** A possible workflow for assessing fairness in the context of observational health studies

**Keywords:** ##bibliography #phenotype #fairness #metrics #observational #health ##research #archive

Bibliography
==========

T. Y. Sun, S. Bhave, J. Altosaar, and N. Elhadad, “Assessing Phenotype Definitions for Algorithmic Fairness,” arXiv:2203.05174 [cs, q-bio], Mar. 2022, Accessed: Apr. 29, 2022. [Online]. Available: http://arxiv.org/abs/2203.05174

Table of Contents
=========

\toc

### Reading Motivation

I wanted to read this article as it was highly recommended to me by my friend, Jaan Altosaar, one of the coauthors of this piece. I was very interested in the methods they used and the approach they took to address fairness in phenotypes as although I had heard about discrepancies in phenotypes, this was a bit of a watershed paper to read in my mind exposing how phenotyping can be so skewed. Really fantastic paper and will be returning to it.

### Purpose of Paper

Biases introduced at phenotype level can risk exacerbating existing health disparities by influencing clinical guidelines and public policy is what this paper argues

### Definitions

**Phenotyping:** Identifying a set of patients with a particular disease

**Phenotype Definitions:** the process of sorting patients based on a disease they have into cohorts. This phenotyping to create definitions is done to learn more about a specific condition such as: 	- Epidemiological queries (e.g., quantifying incidence of disease overtime) (Dubberke et al., 2012) 	- Estimating and predicting risk (Kaelber et al., 2012)  	- Comparing effectiveness (Suchard et al., 2019)

The basis of demographic parity is the federal fourfths rule, which states that a selection rate for any race, sex, or ethnic group which is less than fourfths of the rate of the group with the highest rate will generally be regarded by the Federal enforcement agencies as evidence of adverse impact

### Types of Biases Found in Phenotyping

**Diagnosis Bias:** a bias that prevents or causes delays to a disease diagnosis for a population due to differences in how that disease may present for that particular population. Example: 	- Heart attack literature finds that men complain of chest pain more frequently 	- Woman are likely to complain of other forms of pain. 	- Phenotype definition for heart attack with chest pain as the core symptom may not capture women (Coventry et al., 2011).

**Treatment bias:** a bias that prevents or causes delays to a treatment for population groups. Example: 	- VA black patients less likely to receive cardio-protective drugs than white patients (Mehta et al., 2010 

**Access to Care Bias:** biases that are systemic issues preventing patients from accessing healthcare options. Example: 	- Phenotype definition that requires a diagnosis to occur in outpatient settings could underrepresent patients.

### Common Fairness Metrics

**Demographic Parity:** difference in proportion for each protected class that receives the positive and negative outcome. Also referred to as "independence" or "statistical parity".

$$
P_0(\hat{Y}=\hat{y})=P_1(\hat{Y}=\hat{y}) \forall \hat{y} \in\{0,1\}
$$

**Equality of Opportunity:** when true positive rates of a model are equal across demographics

$$
P_0(\hat{Y}=1 \mid Y=1)=P_1(\hat{Y}=1 \mid Y=1)
$$

**Predictive Rate Parity:** when probability of true labels given the predicted label is the same across classes

$$
P_0(Y=1 \mid \hat{Y}=1)=P_1(Y=1 \mid \hat{Y}=1)
$$

and 

$$
P_0(Y=0 \mid \hat{Y}=0)=P_1(Y=0 \mid \hat{Y}=0)
$$

## References

## References:
## Discussion: 

{{ addcomments }}
