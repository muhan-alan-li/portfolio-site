---
title: "Software Engineer Intern - Apera AI"
weight: 1
---


My most recent role, I worked at Apera AI for 8 months before my graduation in May 2026. Apera's main product is a compupter vision system designed for a manufacturing automation context. My team's responsibility was two things: the asset pipeline, which was used primarily for synthetic data generation, simulation, and model training; and the Forge web app, which was centered around providing a simulated production environment so sales, support team, and even customers could experiment with their setup virtually before undergoing the costly process of full production deployment.

Forge is built with Typescript (React), and Redux, in the frontend, and Python (Flask) in the backend. It was deployed on AWS through Elastic Beanstalk, and used S3 and DynamoDB for data persistence. 

The asset pipeline consisted of a couple of job orchestration services in Python, centered around the DAG (directed acyclic graph). Each node in the DAG represents a job, and a DAG would be used to define the collection of jobs required to train a model, or to run a simulation of production environment.

The bulk of my work involved Forge, and sometimes the asset pipeline itself. For the most part, I owned feature development for Forge alongside my manager/senior (startup environment = my manager wearing like 4 different hats). During my 8 months, our broad goal was to make the user experience on Forge more intuitive, and to create a more streamlined process for users deploying their virtual setup on Forge to their real life production environment.

Two main features I worked on were an asset deployment, and a new logic for data sharing between user accounts, both of which I shipped end-to-end. The process was fairly straightforward, forming requirements, design doc and design review, implementation, testing, shipped. 

Asset Deployment:
- Requirement formulation: I spoke mostly to my manager/senior who is the main product owner, and we identified the goal of deploying robot config files, vision models, and gripper config files from Forge to production devices. Rather than speaking directly to end users and customers, my manager kind of sat as the middleman through which the information was collected.

- Design: probably the most difficult part for me, since the data flowed across ownership boundary from the Forge application to customer devices, and for robot config/vision model/gripper config, each had small nuances with how and where they were stored. Even though the architecture and the functionality we wanted to achieve were pretty straightforward, it still required diving in depth to get all the details right at every step. We ended up settling on extending our DAG system with a new node type, since the infrastructure already supported Forge creating DAGs and sending data into the DAG for work to be done, this gave me more time to work on making sure the new node type was efficiently and securely designed. Another goal of this feature was to improve the data security and access of our backend services in preprartion for SOC2 audits, so we spent some non trivial amount of effort ensuring that cross account access of AWS services where properly configured and limited.

- Implementation: This feature was being shipped in early 2026, so I was working in more of an assisted agentic workflow. At the time, I remember using Cursor and working in a research-plan-work flow with the agent writing code in bulk, and me reviewing and trying to be more clinical with my changes. This feature also included a new UX in Forge, but I was very comfortable working in React at this point, so most of my attention was focused on ensuring the backend was well designed and implemented. The main decision I made in the frontend was to define a component that allowed for dependency injection, since the deployment had to be compatible with three different data types (asset, robot config, gripper config). Aside from that, I had a lot of success using Cursor and Claude to rapidly prototype different UI/UX ideas I had, basically running many miniature A/B tests for myself and our product manager to arrive at a point we were both satisfied with.


