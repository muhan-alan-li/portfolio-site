---
title: "Apera AI - Full Write-up (Draft)"
draft: true
weight: 1
summary: "I worked at Apera AI for 8 months before graduating in May 2026. I worked in a full stack role, the main tech stack is Typescript, React, Python, Flask, AWS, and Docker. In my work and collaboration with others, I also learned about robotics and computer vision basics."
---
Apera's main product is their ML computer vision system. Its designed to solve a problem known as "bin picking".

> **[Bin Picking](https://en.wikipedia.org/wiki/Bin_picking)**: (also referred to as random bin picking) is a core problem in computer vision and robotics. The goal is to have a robot with sensors and cameras attached to it pick-up known objects with random poses out of a bin using a suction gripper, parallel gripper, or other kind of robot end effector. 

An example of the most basic production setup would be the following: 
- a bin of nuts and bolts randomly distributed inside
- a robot is picking up these items one by one
- the robot places them at some configured location in a specified orientation
- the robot continues until the bin is empty.

The software that handles this is called Apera Vue, and the set (typically more than one) of computer vision models are commonly referred to as "Assets".

## What did I do?

I worked on the Asset team at Apera, which was responsible for Apera Forge, and the Asset Pipeline. 

The bulk of my work involved Forge, and sometimes the asset pipeline itself. For the most part, I owned feature development for Forge. During my 8 months, our broad goal was to make the user experience on Forge more intuitive, and to create a more streamlined process for users deploying their virtual setup on Forge to their real life production environment.

I'll write more further below about the main projects I worked on, both of which I owned and shipped end-to-end. Here's a quick summary of Forge and the Asset Pipeline for context.

#### Forge
Forge is built with Typescript (React) and Redux in the frontend, and Python (Flask) in the backend. It's deployed on AWS through Elastic Beanstalk, and uses S3 and DynamoDB for data persistence. The purpose of Forge is to be the "digital twin" to Vue, which is software that lives physically on the factory floor. Customers, sales staff, and support engineers are the main users of Forge, and they use Forge to simulate production deployments and validate/iterate on their bin picking setup.

#### Asset Pipeline
The asset pipeline consisted of a couple of job orchestration services in Python, centered around the DAG (directed acyclic graph). Each node in the DAG represents a job, and a DAG would be used to define the collection of jobs required to train a model, or to run a simulation of production environment. The asset pipeline is responsible for training all the computer vision models used by customers. 

### Asset Deployment 

#### Requirements

In alignment with our goal of making Forge more intuitive, the focus of this feature was to lower the amount of friction for users of Forge to deploy their simulation setups to production. For collecting requirements, I spoke mostly to my manager/senior, who is the product owner, and the point of contact for any customers or support staff who had any feedback about Forge.

I determined two main use cases:

- Deploy an existing asset (computer vision model, robot configuration, or gripper configuration) from a user's account on Forge, to a linked production device

- Optionally toggle a computer vision model training run, to automatically deploy the trained model when it is complete

#### Design - Backend

The architecture design was easily the most difficult part for me, since the data flowed across ownership boundary from the Forge application to customer devices. On top of that, between robot config, computer vision model, and gripper config, each type of data had small nuances with how and where they were stored. 

The main decision point came between extending our existing job orchestration infrastrucutre, versus building out a new service on AWS with Step Functions acting as a job orchestrator for Lambdas. I leaned toward implementing the service on AWS, but we ended up going with extending the existing implementation since the team had little bandwidth to closely oversee my work.

So, the plan was to define a new node type in our graph based job orchestration system. The new node type would be responsible for deploying assets, which could be appended to existing job graphs for packaging or training ML models.

#### Design - Frontend

As for the UX, it was fairly straightforward. I was very comfortable working in React at this point, so my focus was mostly on designing a modular and extensible component for the asset deployment flow. This was mostly about keeping the typed objects well shaped, making sure we tracked the right information in Redux state, and then making the components extensible for other data types in the future.

I also had a lot of success using Claude to create multiple prototypes in quick succession. I would then present what were basically A/B test to my product manager, where we could pick and choose what we liked enough to keep for the final UX flow. I found this to be a very useful and transformative use of coding agents.

#### Implementation

This feature was being shipped in early 2026, so I was working in more of an assisted agentic workflow. At the time, I remember using Cursor and working in a workflow where the agent writing code in bulk, and I reviewed and refined changes. 

Another new thing about agentic engineering around this time was figuring out how to deal with the increased velocity on implementation. Confining agent output and outlining commit formats and PR guidelines in AGENTS.md was something I started doing pretty extensively during this time. 

I was able to ship my feature ahead of schedule -ish, taking about 1.5 of the estimated 2 months that we allocated. Credit probably goes to my manager, and then Claude, for their guidance and automation, respectively.

### Data Sharing

#### Requirements

We had a channel for feedback and issues from users (support staff, and customers) of Forge. A commonly reported one was a simulation error that seemed to appear out of nowhere. With some investigation, I found that it was a lost object reference that occurred during object copy when one user shared their simulation setup to another user.



#### Design - Backend

#### Implementation

### Misc.



## What I learned
