+++
title = "CDM Standardized Tables"
slug = "02082021170353-cdm-standardized-tables"
tags = ["zettel", "omop", "cdm", "table", "standardized", "archive"]
description = "Standardized tables used in the OMOP Common Data Model"
rss_title = "CDM Standardized Tables"
rss_description = "Standardized tables used in the OMOP Common Data Model"
rss_pubdate = Date(2021, 2, 8)
+++



CDM Standardized Tables
=========

**Date:** February 8 2021

**Summary:** Standardized tables used in the OMOP Common Data Model

**Keywords:** #zettel #omop #cdm #table #standardized #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

OMOP Common Data Model (CDM): effort to standardize observational data to enable transferable analysis. [1]

### OMOP CDM Design Elements

The OMOP CDM features person­centric design where each domain records personal identity and a ate while prioritizing data protection through the limiting of information that could endanger patient anonymity. The CDM relies on Standardized Vocabularies and attempts to reuse existing vocabularies where it can. Furthermore, to prevent data loss, the CDM stores original patient source codes.

The CDM itself does not require a specific technology to work with the data stored in this standard. As a result of this, all versions of the CDM are backwards compatible Even more the CDM is scalable for data processing and analy­sis

### OMOP CDM Conventions

The CDM is person ­centric meaning tha all clinical Event tables are linked to the`PERSON` table. Tables that need to be manipulated by users are stored in the "Results" schema. The two tables in the "Results" schema are: `COHORT` and `COHORT_DEFINITION`. The data types defined in these tables are ANSI SQL:

  * VARCHAR
  * INTEGER
  * FLOAT
  * DATE
  * DATETIME
  * CLOB

### OMOP CDM "Concept"'s

All content in the OMOP CDM is a concept. They form relationships with one another in a hierarchical manner. This concept information is stored in the following tables:

1. `CONCEPT` - the concepts in the CDM
2. `CONCEPT_RELATIONSHIP` - the relationships between concepts
3. `CONCEPT_ANCESTOR` - hierarchical concept relationships; see [Exploring Ancestors and Descendants of a Concept](https://jacobzelko.com/07282021202459-exploring-ancestors-concept)

#### "Concept" Example

| CONCEPT*ID       | 313217             | | CONCEPT*NAME     | Atrial Fibrilation | | DOMAIN*ID        | Condition          | | VOCABULARY*ID    | SNOMED             | | CONCEP*CLASS*ID  | Clinical Finding   | | STANDARD*CONCEPT | S                  | | CONCEPT*CODE     | 4936004            | | VALID*START*DATE | 01-Jan-1970        | | VALID*END*DATE   | 31-Dec-2099        | | INVALID_REASON   |                    |

  * `CONCEPT_ID` is used internally by the OMOP CDM to reference a specific concept
  * `STANDARD_CONCEPT` designates if a concept is standard within the OMOP CDM: "S" represents it is standard, "C" represents its classification, and no value means that concept is not used inside the OMOP CDM

#### Drug "Concepts"

Includes:

  * Drug Products
  * Drug Ingredients
  * Drug Classes

One can query [drug concepts by name](https://jacobzelko.com/07282021211226-drug-concepts) easily in OHDSI tools.

### Use Cases for the OMOP CDM

The OMOP CDM is implemented to help with Big Health Data collection. We use Big Health Data because it:

1. Enables research
2. Backs effective healthcare
3. Manages healthcare claims

The CDM is optimized for typical observational research purposes such as

1. Identifying patient populations
2. Characterize populations
3. Determining effects of population-based interventions
4. Organize data for analysis
## How To Cite

 Zelko, Jacob. _CDM Standardized Tables_. [https://jacobzelko.com/02082021170353-cdm-standardized-tables](https://jacobzelko.com/02082021170353-cdm-standardized-tables). February 8 2021.
## References

[1] J. M. Overhage, P. B. Ryan, C. G. Reich, A. G. Hartzema, and P. E. Stang, “Validation of a common data model for active safety surveillance research,” J. Am. Med. Inform. Assoc., vol. 19, no. 1, pp. 54–60, 2012.
## Discussion: 

{{ addcomments }}
