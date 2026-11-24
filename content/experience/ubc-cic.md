---
title: "Software Developer Co-op @ UBC Cloud Innovation Center"
weight: 3
summary: "I delivered two AWS proof-of-concept projects for non-profit and internal clients, from requirements through implementation."
---

The UBC Cloud Innovation Center is a collaboration between UBC and AWS, where students lead the development and delivery of open-source projects for non-profit organizations. Projects at the CIC typically span three to four months, with deliverables consisting of a fully functional proof of concept and detailed documentation outlining how to scale the solution for production on AWS. Over my eight-month co-op term, I worked with another developer to deliver two projects: Harm Reduction and Video Assessment.

For both projects, we built from the ground up, gathering requirements and refining our designs through direct meetings with non-technical clients. We then divided responsibilities and handled the implementation ourselves.

The Video Assessment project was an internal initiative, with the CIC's project manager and director serving as our clients. The goal was to explore the feasibility of a WebRTC-based video ingestion application. Potential use cases included allowing customers of medical clinics or law firms to submit videos for anonymization. My primary responsibility was designing the backend architecture for the video ingestion pipeline. The pipeline used Amazon Rekognition to apply ML-based anonymization to individual clips, followed by Amazon Kinesis Video Streams to stitch the clips into complete videos. S3 buckets were used to store clips during processing, while AWS Lambda functions handled state transitions as clips progressed through the pipeline.

The Harm Reduction project was an external initiative developed for the UBC Hein Lab. Their goal was to give students on campus a way to anonymously test the contents of drugs. For example, a student could submit a cannabis sample to a dropbox and receive results indicating whether the sample contained potentially dangerous substances. My teammate and I collaborated across the stack, meeting with the clients biweekly to gather requirements, discuss design and architecture decisions, and present our proof of concept.

I used Figma to design frontend mockups and implemented the web client using JavaScript and React. Privacy and restricted data access were particularly important for this project. I implemented JWT-based authorization to ensure users could only access their own results, and configured Amazon Cognito, DynamoDB, and API Gateway to support the anonymous user workflow.
