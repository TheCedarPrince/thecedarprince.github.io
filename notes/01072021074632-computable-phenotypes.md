+++
title = "What Are Computable Phenotypes?"
slug = "01072021074632-computable-phenotypes"
tags = ["zettel", "ehr", "electronic", "health", "records", "computable", "phenotypes", "codes", "icd-9", "icd-10", "snomed-ct", "archive"]
description = "An overview into what computable phenotypes are and how they are used."
rss_title = "What Are Computable Phenotypes?"
rss_description = "An overview into what computable phenotypes are and how they are used."
rss_pubdate = Date(2021, 1, 7)
+++



What Are Computable Phenotypes?
=========

**Date:** January 7 2021

**Summary:** An overview into what computable phenotypes are and how they are used.

**Keywords:** ##zettel #ehr #electronic #health #records #computable #phenotypes #codes #icd-9 #icd-10 #snomed-ct #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Operational Definitions

**Phenotype:** a measurable biological, behavioral, or cognitive marker found more often in specific individuals than the general population; the appearance it presents to observers.[1]

[**Phenotyping:**](/./08122022205622-assessing-phenotype-fairness.md) Identifying a set of patients with a particular disease 

**Computable phenotype:** a clinical element that can derived from queries to an EHR or ancillary data sources (such as claims data, or disease registries) using a defined set of data elements and logical expressions.  It does not require chart review or interpretation by a clinician. 

**Data element:** the unit of data being queried, exchanged, or analyzed. It includes:

  * Descriptive name for the concept
  * A specified value set
  * Additional metadata

**Value set:** the set of possible information associated with a particular data element. [2]

**Metadata:** descriptive data about objects, including data objects; data about data.

### Computable Phenotypes Definitions

**Computable phenotype definitions:** classifying individuals with a given characteristic of interest from EHRs. Done by using data routinely collected in EHRs or ancillary data sources (such as claims data, or disease registries).

Computable phenotype definitions enable reproducible queries of EHRs. They are made of data elements and boolean operators which are executed by a computer. Furthermore, they rely on value sets derived from standardized coding systems.

These definitions help identify people with particular conditions across healthcare organizations by using common definitions. Standard phenotype definitions can enable direct identification of cohorts. This allows decision-makers to specifically target screening tests and interventions to such cohorts.

#### Creating Computable Phenotypes

1. Define how a concept should be studied given available data.
2. Identify which diagnoses, treatments, and patient characteristics suggest a condition of interest.
3. Specify clinical condition being searched for and how that would be represented in various EHRs.

#### Characteristics of a Good Phenotype Definitions

1. Does not conflict with a previously pre-defined phenotype definitions
2. Details of a definition need be communicated.

It should enable reproducible queries in other contexts.

3. They must always yield similar results given same data; be reliable.
4. Assess implementation for a given setting
5. Phenotype definition must be compared using available clinical gold standard.

#### Determining the Validity of a Phenotype Definition

1. Ability to correctly identify which individuals exhibit the phenotype.

### Available Phenotype Definitions

This paper contains a plethora of resources regarding phenotype definitions:

> R. Richesson and M. Smerek, "Electronic health records-based phenotyping," Rethinking clinical trials: A living textbook of pragmatic clinical trials, vol. 2016, 2014.


## References

## References

[1] R. Richesson and M. Smerek, “Electronic health records-based phenotyping,” Rethink. Clin. Trials Living Textb. Pragmatic Clin. Trials, vol. 2016, 2014.

[2] “NIH Common Data Elements (CDE) Repository.” [Online]. Available: https://cde.nlm.nih.gov/home. [Accessed: 30-Dec-2020].
## Discussion: 

{{ addcomments }}
