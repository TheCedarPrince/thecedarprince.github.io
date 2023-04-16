+++
title = "Developing a Robust Computable Phenotype Definition Workflow to Describe Health and Disease in Observational Health Research"
slug = "01102023212115-computable-phenotypes"
tags = ["computable", "phenotype", "observational", "health", "blog", "equity", "archive"]
description = "Considerations and discussion on a workflow for developing computable phenotype definitions to define disease"
rss_title = "Developing a Robust Computable Phenotype Definition Workflow to Describe Health and Disease in Observational Health Research"
rss_description = "Considerations and discussion on a workflow for developing computable phenotype definitions to define disease"
rss_pubdate = Date(2023, 4, 15)
+++



Developing a Robust Computable Phenotype Definition Workflow to Describe Health and Disease in Observational Health Research
=========

**Date:** April 15 2023

**Summary:** Considerations and discussion on a workflow for developing computable phenotype definitions to define disease

**Keywords:** #computable #phenotype #observational #health #blog #equity #archive

Bibliography
==========

J. S. Zelko et al., “Developing a Robust Computable Phenotype Definition Workflow to Describe Health and Disease in Observational Health Research.” arXiv, Mar. 30, 2023. doi: 10.48550/arXiv.2304.06504.

Table of Contents
=========

\toc

### Motivation

This small blog post gives a very high level overview of a paper I authored on developing phenotype definitions which are computable and robust to a disease being examined.  [This paper is vailable on arXiv under a CC BY-SA 4.0 license](https://arxiv.org/abs/2304.06504).  Please [reach out to me](https://jacobzelko.com/resources/) if you have any issues accessing this paper and I will send you a PDF!

### Background

While working on some of my notes one day, I realized I had the beginnings of a paper! In particular, I was working on a note about [computable phenotypes](https://jacobzelko.com//01072021074632-computable-phenotypes) and thinking about [All Payer Claims Databases](https://jacobzelko.com//01022021031334-all-payer-claims). Additionally, I am in the course of a current endeavor built on a study I conducted last year called, [*A Pilot Characterization Study Assessing Health Equity in Mental Healthcare Delivery within the State of Georgia*](https://zenodo.org/record/7779877) which has made me think strongly about the whole concept of developing definitions of disease.

It just so happened while I was thinking about these ideas, my Georgia Tech Research Institute colleague, Dr. Shenita Freeman, let me know about an upcoming IEEE conference, the [*2023 IEEE Computer Based Medical Systems conference*](https://web.archive.org/web/20230325190023/http://2023.cbms-conference.org/). We both took a look at the opportunity and saw that a paper about computable phenotypes as well as the overall notion of phenotype definitions was a good idea for the conference. I reached out to some collaborators and we were off on writing this paper!

### What's the Purpose about This Paper?

What if I told you, how we, as researchers, speak about disease is, wrong – or at least, not quite accurate? For example, if I tell you, "I research diabetes!", well that is great and a noble cause but that doesn't help with telling people what it is that you are *actually* doing. As any diabetic knows, there is a huge difference between Type I Diabetes and Type II Diabetes and that doesn't consider other species of diabetes such as gestational diabetes, etc. So, it seems to me, that we need some sort of rigorous way to talk about disease, right?

Yes! Many researchers over the years have been defining what are called ["phenotypes"](https://jacobzelko.com//01072021074632-computable-phenotypes) which can be things like disease diagnoses (such as Type II Diabetes) and lab measurements (like blood glucose, HbA1C, etc.). Then, we can build upon these phenotypes into what is called a "phenotype definition". Simply put, these are a set of instructions that tells us *how* we are observing these phenotypes. Going back to our rather vague diabetes researcher, they tell us that they are actually investigating Type II Diabetes in geriatric populations within patient data they have access to. Now that is a lot more useful!  A possible phenotype definition for what our researcher friend is doing is: "Patients who are 65 or older with a diagnosis of or related to Type II Diabetes."

Our researcher is in much better shape on explaining what they have done.  So good that they are on their way to a research conference to present on findings from this definition! Their fellow researchers, as well as some clinicians, at the conference love what they are doing and want to know how they can reproduce this definition with their own patient datasets. And, our researcher friend has documented the process... Right?

Definitely! They have prepared it in the form of a computable phenotype definition! They took the diabetes phenotype definition, looked up medical diagnosis codes, and reviewed patient data that is generally to see what could actually be computed on their patient data. Our researcher chose to implement their computable phenotype definition within a query language like SQL but having the computable phenotype definition on hand, other researchers could either adapt the SQL or re-implement it in another approach they prefer.

And just like that, our researcher now has a much clearer, meaningful, and impactful answer to the question, "What disease are you studying?"

### What's the Process?

![](03302023175728-phenotype-workflow-diagram.png)

We spent a lot of time thinking through each step a researcher could potentially take on developing a phenotype definition and this diagram summarized our thinking of the entire process. Additionally, to summarize these steps, we created a checklist that could be followed here for developing a phenotype definition: 

  * [ ] Intent
  * [ ] Decide on a motivation to guide phenotype definition construction
  * [ ] Literature Review

      * [ ] Identify phenotypes
      * [ ] Review or validate selected phenotypes
  * [ ] Identify Phenotypes

      * [ ] Specify phenotypes
      * [ ] Add constraints
  * [ ] Translate needs to phenotype definition

      * [ ] Define disqualifiers and/or strengtheners
      * [ ] Combine relevant phenotypes with a logic description
  * [ ] Develop Computable Phenotype

      * [ ] Review what concepts are consistently present in data
      * [ ] Implement phenotype definition in a computable form
  * [ ] Execute Definition

      * [ ] Execute computable phenotype definition on database
  * [ ] Assess & Revise

      * [ ] Consider assumptions within phenotype definition
      * [ ] Revise phenotype definition as needed
  * [ ] Do, Monitor, & Evaluate

      * [ ] Answer research question or achieve goal.
      * [ ] Repeat phenotype definition checklist as appropriate

To learn more about this checklist, definitely read the second part of the paper! 

### What Are the Trade-offs in Developing a Definition?

The paper further goes into details about some of the trade-offs within developing a phenotype definition.  You may be surprised to hear that there would have to be trade-offs in defining a disease for a population. However, in practice, some counter-intuitive observations emerge:

The first is what I refer to as the paradox of phenotype definitions. A very well-intentioned but somewhat naive approach when thinking about researching specific subpopulations is to define your phenotype definition as specifically as possible. For example, a possible phenotype definition could be "White male patients with depression between the ages of 40 - 49 living within rural Tennessee counties". However, with each [intersecting feature ("axis") imposed on a population](https://jacobzelko.com//11042022134535-structural-intersectionality), the resulting number of patients captured is smaller and smaller. Going back to our example, if you have 1000 males in Tennessee, 100 people between the ages of 40-49, and only 50 people within rural parts of the state, then at best, you'll only end up with 50 people matching your phenotype definition. The question becomes less of how to make a precise definition and more of balancing the trade-off between if a phenotype definition actually represents the population one is investigating and how useful a phenotype definition in practice will be. 

The second, is how a phenotype definition can differ from a computable phenotype definition. What I mean by that is a team of clinicians who may want to study a specific disease make a very clinically accurate picture of a patient population in a phenotype definition. However, when an informaticist looks at the definition and tries to implement it into a computable phenotype definition, there may be some aspects of the original phenotype definition that do not map well to a software implementation in practice. For more details, I suggest strongly to look at the first part of this paper as this topic is quite extensive.

Finally, and by no means exhaustive to our list of trade-offs, is the idea of, "Is the data we want to analyze even computable?" An excellent example that had to be cut from the paper for space reasons is the emergence of COVID19. When COVID19 emerged as a threat to humanity, everyone wanted to analyze it and understand it as rapidly as possible. However, the problem was, was that there was a long (in the context of the pandemic) period in which collecting data on COVID19 diagnosis and symptom-type data was not possible. Hospitals would code deaths as related to symptoms exacerbated by COVID19 (myocardial infarction, pneumonia, etc.), diagnoses related to presented symptoms (bronchitis, stroke, etc.) but never to a formal COVID19 diagnosis. This has since been remedied by emergency measures taken by [ICD](https://icd.who.int/en) for medical coding but now, much of the earlier pandemic data, if someone wanted to study COVID19 with any kind of phenotype definition for COVID19, is not accurate. This presents a disconnect between a known problem (COVID19) to be studied and what could actually be studied (the data that is actually available for computation).

### Wrap-Up

In summary, I sincerely believe that this paper is quite useful in many different areas! Especially, this paper can now serve as a sort of touchstone for interdisciplinary teams when discussing these concepts. 

Please let me know if you have any questions and comments or if you notice any egregious errors within the paper in the comments!
## How To Cite

 Zelko, Jacob. _Developing a Robust Computable Phenotype Definition Workflow to Describe Health and Disease in Observational Health Research_. [https://jacobzelko.com/01102023212115-computable-phenotypes](https://jacobzelko.com/01102023212115-computable-phenotypes). April 15 2023.
## References:
## Discussion: 

{{ addcomments }}
