+++
title = "Step by Step Guide to Moving Your GitHub Repository to a GitHub Organization"
slug = "08232023150902-moving-repository-organization"
tags = ["github", "organization", "repository", "permissions", "git", "blog", "archive"]
description = "How to move your GitHub repository into a GitHub organization"
rss_title = "Step by Step Guide to Moving Your GitHub Repository to a GitHub Organization"
rss_description = "How to move your GitHub repository into a GitHub organization"
rss_pubdate = Date(2023, 8, 23)
+++



Step by Step Guide to Moving Your GitHub Repository to a GitHub Organization
=========

**Date:** August 23 2023

**Summary:** How to move your GitHub repository into a GitHub organization

**Keywords:** #github #organization #repository #permissions #git #blog #archive

Bibliography
==========

Not Available

Table of Contents
=========

\toc

### Motivation

As I am the head of a few GitHub organizations now, I figured it would be useful to have a nice step by step guide for helping individuals move their repositories into organizations that I help manage.

### Assumptions

The following assumptions are made in this tutorial:

1. You have a GitHub profile
2. You have a repository you wish to transfer
3. The GitHub organization you wish to transfer the repository to is called "JuliaHealth"

### Steps for the Repository Owner

1. Initiate the Transfer

    a. Log in to your GitHub account.

    b. Open the repository you want to transfer

    c. Click on "Settings" and then select "Options" from the left sidebar.

    d. Scroll down to the "Danger Zone" section and click "Transfer Ownership."

    e. Confirm by entering your password.

    f. Choose "JuliaHealth" from the dropdown.

    g. Click "I understand, transfer this repository."
2. Verify Repository Transfer

    a. Go to the [JuliaHealth GitHub organization home page](https://github.com/JuliaHealth)

    b. You should see the repository on the home page

At this stage, let the Organization admins know that the repository is transferred to the organization. If there were any issues, reach out to JuliaHealth admins for help here.

### Steps for Organization Owner

1. Adjust transferred repository permissions to allow owners full permission to repository

    a. Open the transferred repository within your organization.

    b. Navigate to "Settings."

    c. Click on "Manage access."

    d. Add the original owner's GitHub account as a collaborator or provide them with the necessary access.
2. Inform the original repository owner of permissions

#### Optional Step: Transfer Repository Back to Owner

If the original owner wants to remove the repository from the organization:

1. Go to the repository's "Settings" within the organization.
2. Scroll down to the "Danger Zone" section and click "Transfer Ownership."
3. Opt to transfer the repository back to their personal account.

Additionally, depending on the permissions given by the Organization admins, the repository owners may be able to transfer the package back to themselves as well at any time.
## How To Cite

 Zelko, Jacob. _Step by Step Guide to Moving Your GitHub Repository to a GitHub Organization_. [https://jacobzelko.com/08232023150902-moving-repository-organization](https://jacobzelko.com/08232023150902-moving-repository-organization). August 23 2023.
## References:
## Discussion: 

{{ addcomments }}
