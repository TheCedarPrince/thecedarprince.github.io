
@def title = "Projects"

<!--TODO: Make this more automatic in the future-->


# Motivation

There are so many great ideas in the world! 
Sadly, there is not enough time for me to pursue all of them!
So, rather than just saving all these ideas for myself, I want to open these ideas to the world.
I am willing to mentor these projects generally (just reach out to me if interested) and help bring them to life.

# Overview

\toc

These ideas are ideas I have come up with over the years of work and research.
They are broken out by general topic.
Each idea is associated with a small background description, goals, related projects, and related resources.
If you are interested in pursuing any projects or have an idea of your own, please reach out to me!
Thanks for stopping by!

# Health Informatics

## Assessing Fairness and Bias in Data Sets

Background: It is often the case in which data contains a type of bias due to any number of reasons -- regarding patient health data, this is even more pronounced.
Bias can occur due to poor collection methods, how information is recorded, and also how information is presented or analyzed.

Goal: For this project, you will develop a package to assess fairness and bias within a patient dataset. Of particular interest, you will be exploring concepts such as:

- Data Completeness
- Demographic data including but not limited to
  * Race
  * Gender
  * Sex
  * Age
  * Location
- Types of Bias
- Computable Phenotype Definitions
  * Medical Ontologies
  * Phenotype Definitions
- Fairness algorithms

Related Projects:

- https://github.com/vollmersj/SurvivalAnalysis.jl
- https://github.com/ashryaagr/Fairness.jl

Related Resources:

- https://arxiv.org/abs/2203.05174
- https://jacobzelko.com/01102023212115-computable-phenotypes/
- https://ohdsi.github.io/CommonDataModel/

## Coarse Disease Treatment Pathways

Background: Oftentimes when working with a dataset, it is of interest to gain a quick "feel" for what is contained within a dataset.
This is especially true of patient datasets adn what potential types of disease are available for study within a dataset.

Goal: for this project, you will create a composable (i.e. modular) based package that will execute upon a patient dataset. 
This package will have functionality to be presented within the form of reports, simple metrics, and interactive dashboards.
Some topics involved are:

- Patient Database Standards
  - OMOP Common Data Model
- Epidemiology
  - Metrics
    * Prevalence
    * Incidence
    * Length of Stay
    * ...
  * Comorbidities
  - Characterization
- Visualization
  - Dashboards
  * Plotting
- Automation
  * Reporting

Related Projects:

- Plots.jl (with only the Plotly backend)
- Genie Framework:
  - Stipple.jl
  - StippleUI.jl
  - StipplePlotly.jl
  - StippleDemos
    - See lorenz-pere.geniecloud.app for inspiration
- Join the Genie Discord
- ATLAS Demo: https://atlas-demo.ohdsi.org/

Related Papers:

Not Available

## A Composable and Computable Clinical Type System

Background: Within health data, many concepts related to one's health exist. 
However, what has lacked in the advent of massive computation upon patient health data are concepts ways to represent clinical concepts in a computational way.

Goal: The goal for this project will be to develop a type hierarchy that can be used within computational context.
The precise type hierarchy should be agnostic to the implementation. 
Some topic areas will be:

- Computable Phenotype Definitions
  - Medical Ontologies
  * Phenotype Definitions
- Type Theory

Related Projects:

- https://github.com/MechanicalRabbit/FunOHDSI.jl

Related Resources:

- https://www.biorxiv.org/content/10.1101/737619v2.full (Clark
  has another paper floating around but I cannot find it at the
  moment)

## Fairness Auditing Tool for Phenotype Definitions

Background: Currently, many disease definitions are determined based on quorum or even ad hoc acceptance. 
It has been an emerging problem that disease definitions, despite an interdisciplinary best effort, may in fact be incorrect or misrepresent persons.

Goal: The aim for this project will be to develop an auditing tool that can be deployed upon phenotype definitions to assess the fairness of its definition. 
Some topics to be explored will be:

- Fairness Metrics
  - Demographic Parity
  - Equality of Opportunity
  - Predictive Rate Parity
- Computable Phenotype Definitions
  - Medical Ontologies
  - Phenotype Definitions

Related Projects:

Not Available

Related Resources:

- https://arxiv.org/abs/2203.05174
- https://jacobzelko.com/01102023212115-computable-phenotypes/

## Enable Complementary Computation of Non-traditional Data Sources

Background: Every day new and novel ways of data is being generated. 
Whether through social media platforms, atmospheric data collection agencies, or local interest groups. 
Determining how to complement and format data against healthcare data is an outstanding challenge.

Goal: The goal for this project will be to take non-traditional data sources and associate them with standardized patient data. 
It will be an open exploration on how to expand such standards to accommodate novel data modalities. 
Such topics to be explored are:

- Non-Traditional Data Sources
  - Social Media Platforms
  - Environmental data
  - Local Data
    - Construction Data
    - Crime Data
    - Education Data
  - National Data
    - CDC Wonder
    - UK Biobank
    - WHO
- Time Series
- Data Models
  - OMOP Common Data Models
  - ...

Related Projects:

Not Available

Related Resources:

- https://ohdsi.github.io/CommonDataModel/
