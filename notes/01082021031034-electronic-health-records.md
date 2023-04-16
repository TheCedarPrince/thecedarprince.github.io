+++
title = "Electronic Health Records"
slug = "01082021031034-electronic-health-records"
tags = ["zettel", "ehr", "healthcare", "archive"]
description = "An overview of Electronic Health Records"
rss_title = "Electronic Health Records"
rss_description = "An overview of Electronic Health Records"
rss_pubdate = Date(2021, 1, 7)
+++



Electronic Health Records
=========

**Date:** January 7 2021

**Summary:** An overview of Electronic Health Records

**Keywords:** ##zettel #ehr #healthcare #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Assessment of EHRs

US Department of Health and Human Services' (HHS) Office of the National Coordinator of Health Information Technology (ONC) specifies standards for EHR systems. This is to ensure that EHRs meet "Meaningful Use" criteria.

EHR data is generally from patients who have the means of seeing a provider. [1] This data may be available from different encounters. Examples include:

  * Inpatient
  * Outpatient
  * Emergency department visits

### Limitations of EHRs

EHRs are not optimized for secondary uses. They have multiple limitations for research [1], [2] EHR data is recorded during healthcare visitations. As a result, bias can favor those sicker in datasets. This results in what is known as informative censoring [1], [3], [4] It is important to distinguish between "not present" in datasets versus "did not assess".

Errors propagate EHRs and ancillary sources. Data is entered by providers during visitation or memory. [1]

Healthcare standards change over time. Collection standards vary by location. Much data is unstructured and narrative in nature. [Vannevar Bush article "As We May Think"](https://jacobzelko.com/01112021180936-we-may-think) also has relation to this very same issue. Regarding how clinicians' recall or anyone's recall of an incident from more than a few days ago may be impossible. There are analogies between the two disparate lines of thought: one clinical, the other academic: both overwhelming.

Only a few data fields are common across different EHRs. Most phenotype definitions use combinations of:

  * ICD-9 codes
  * Medication names
  * Laboratory tests.

EHRs will use ICD-10 codes for diagnoses and potentially SNOMED-CT codes for problem lists and other aspects of EHRs.  EHRs also consist of free form text where Natural Language Processing could be of use. [5] ICD-9-CM diagnosis codes can be found in technical billing, professional billing, and/or problem lists.
## How To Cite

 Zelko, Jacob. _Electronic Health Records_. [https://jacobzelko.com/01082021031034-electronic-health-records](https://jacobzelko.com/01082021031034-electronic-health-records). January 7 2021.
## References

[1] R. Richesson and M. Smerek, “Electronic health records-based phenotyping,” Rethink. Clin. Trials Living Textb. Pragmatic Clin. Trials, vol. 2016, 2014.

[2] K. B. Bayley, T. Belnap, L. Savitz, A. L. Masica, N. Shah, and N. S. Fleming, “Challenges in using electronic health record data for CER: Experience of 4 learning organizations and solutions applied,” Med. Care, pp. S80–S86, 2013.

[3] W. J. Shih, “Problems in dealing with missing data and informative censoring in clinical trials,” Curr. Control. Trials Cardiovasc. Med., vol. 3, no. 1, pp. 1–7, 2002.

[4] N. R. Council et al., The prevention and treatment of missing data in clinical trials. National Academies Press, 2010.

[5] J. F. Ludvigsson et al., “Use of computerized algorithm to identify individuals in need of testing for celiac disease,” J. Am. Med. Inform. Assoc., vol. 20, no. e2, pp. e306–e310, 2013.
## Discussion: 

{{ addcomments }}
