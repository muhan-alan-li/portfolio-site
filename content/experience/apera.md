---
title: "Software Engineer Intern @ Apera AI"
weight: 1
summary: "I worked at Apera AI for 8 months before graduating in May 2026. I worked in a full stack role, the main tech stack is Typescript, React, Python, Flask, AWS, and Docker. In my work and collaboration with others, I also learned about robotics and computer vision basics."
---
Apera's main product is their ML computer vision system. Its designed to solve a problem known as "bin picking".

> **Bin Picking**: (also referred to as random bin picking) is a core problem in computer vision and robotics. The goal is to have a robot with sensors and cameras attached to it pick-up known objects with random poses out of a bin using a suction gripper, parallel gripper, or other kind of robot end effector. 

An example of the most basic production setup would be the following: 
- a bin of nuts and bolts randomly distributed inside
- a robot is picking up these items one by one
- the robot places them at some configured location in a specified orientation
- the robot continues until the bin is empty.

The software that handles this is called Apera Vue, and the set (typically more than one) of computer vision models are commonly referred to as "Assets".

## What did I do?

I worked on the Asset team at Apera, which was responsible for Apera Forge, and the Asset Pipeline. 

Forge is built with Typescript (React) and Redux in the frontend, and Python (Flask) in the backend. It's deployed on AWS through Elastic Beanstalk, and uses S3 and DynamoDB for data persistence. The purpose of Forge is to be the "digital twin" to Vue, which is lives physically on the factory floor. Customers, sales staff, and support engineers are the main users of Forge, and they use Forge to simulate production deployments and validate/iterate on their bin picking setup.

The asset pipeline consisted of a couple of job orchestration services in Python, centered around the DAG (directed acyclic graph). Each node in the DAG represents a job, and a DAG would be used to define the collection of jobs required to train a model, or to run a simulation of production environment. The asset pipeline is responsible for training all the computer vision models used by customers. 

The bulk of my work involved Forge, and sometimes the asset pipeline itself. For the most part, I owned feature development for Forge alongside my manager/senior (startup environment = my manager wearing like 4 different hats). During my 8 months, our broad goal was to make the user experience on Forge more intuitive, and to create a more streamlined process for users deploying their virtual setup on Forge to their real life production environment.

Two main features I worked on were an asset deployment, and a new logic for data sharing between user accounts, both of which I shipped end-to-end. The process was fairly straightforward, forming requirements, design doc and design review, implementation, testing, shipped. 

**Asset Deployment**

Requirement formulation:
- I spoke mostly to my manager/senior who is the main product owner, and we identified the goal of deploying robot config files, vision models, and gripper config files from Forge to production devices.
- Rather than speaking directly to end users and customers, my manager kind of sat as the middleman through which the information was collected.

- Design: probably the most difficult part for me, since the data flowed across ownership boundary from the Forge application to customer devices, and for robot config/vision model/gripper config, each had small nuances with how and where they were stored. Even though the architecture and the functionality we wanted to achieve were pretty straightforward, it still required diving in depth to get all the details right at every step. We ended up settling on extending our DAG system with a new node type, since the infrastructure already supported Forge creating DAGs and sending data into the DAG for work to be done, this gave me more time to work on making sure the new node type was efficiently and securely designed. Another goal of this feature was to improve the data security and access of our backend services in preprartion for SOC2 audits, so we spent some non trivial amount of effort ensuring that cross account access of AWS services where properly configured and limited.

- Implementation: This feature was being shipped in early 2026, so I was working in more of an assisted agentic workflow. At the time, I remember using Cursor and working in a research-plan-work flow with the agent writing code in bulk, and me reviewing and trying to be more clinical with my changes. This feature also included a new UX in Forge, but I was very comfortable working in React at this point, so most of my attention was focused on ensuring the backend was well designed and implemented. The main decision I made in the frontend was to define a component that allowed for dependency injection, since the deployment had to be compatible with three different data types (asset, robot config, gripper config). Aside from that, I had a lot of success using Cursor and Claude to rapidly prototype different UI/UX ideas I had, basically running many miniature A/B tests for myself and our product manager to arrive at a point we were both satisfied with.

**Data Sharing**

## What I learned
