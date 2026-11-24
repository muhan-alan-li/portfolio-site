---
title: "Software Engineer Intern @ Apera AI"
weight: 1
summary: "I worked on the asset team at Apera AI, shipping end-to-end features for Apera Forge, a web portal for training and evaluating computer vision models."
---

Apera AI's main product is a machine learning computer vision system used for manufacturing automation. If robots on an assembly line are the arms and hands, you can think of Apera AI's system as the eyes and brains. I worked on the asset team at Apera, where I shipped features end-to-end for Apera Forge, a web portal that allows users to train computer vision models and evaluate them in simulated production environments.

I extended the DAG-based job orchestration service to support a self-serve UX flow for deploying robot configurations and trained computer vision models to production systems. Using Python and Docker, I defined a new type of job node and implemented the packaging and signing logic required to create deployable assets. In the web app, I designed a new React component that leveraged dependency injection to support modular use across different types of data. I integrated this component with updated schemas and REST endpoints in the backend to deliver the complete self-serve deployment workflow. This feature reduced the turnaround time for asset deployment requests from upwards of an entire day to just five minutes.

I also led a refactor of data sharing between user accounts in Forge. I reworked the nested object-copying logic to ensure correctness when performing deep copies, and implemented custom logic to reassign UUIDs and prevent dangling references in newly created copies. To ensure data integrity, I used boto3's DynamoDB transactional write API to guarantee atomicity during copy creation. This refactor almost entirely eliminated support requests related to object creation errors during data sharing.

Beyond the features I owned, I also contributed to several tooling improvements in Forge. These included expanding robot support to accommodate models with an arbitrary number of joints, implementing joint rotation limits based on robot schemas, and adding collision detection and highlighting to the data generation configuration tool. The goal of these improvements was to better align Forge's simulations with real-world production environments. For these smaller modifications, I focused on keeping changes surgical, making PRs easy to review, and ensuring UX changes made sense in the context of Forge as a product.

This co-op taught me how much of building a useful product happens between the frontend and backend. I learned to follow a feature across the whole system, from the way a user works in Forge to the jobs and data that make the workflow possible.
