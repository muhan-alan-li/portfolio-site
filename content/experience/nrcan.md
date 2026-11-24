---
title: "Software Developer Co-op @ Natural Resources Canada"
weight: 2
summary: "I built a C# data transformation library for ANSE, a carbon accounting simulation engine, and improved its build and release workflows."
---

At Natural Resources Canada, I worked with the carbon accounting team based at the Pacific Forestry Centre in Victoria, BC. The team's main software product is ANSE (Abstract Simulation Network Engine). Carbon accounting involves tracking the lifecycle of carbon, from when it is absorbed by a tree from atmospheric CO2, to when the tree is harvested, processed into lumber, built into furniture, recycled into woodchips, and eventually burned or discarded in a landfill. Of course, not all units of carbon follow this exact path.

ANSE models these processes as a network of nodes connected by upstream and downstream weights, simulating the flow of carbon from source nodes to end nodes over a given time period. For example, a user might use ANSE to simulate the movement of carbon across the state of California over the course of 2025. ANSE's primary users were forestry researchers across North America.

My team consisted of two engineers, another co-op student, a PhD-level forestry researcher, and myself. My primary responsibility was building a C# data transformation library for ANSE. The main challenge was normalizing data from Excel spreadsheets and text files, which could follow several different valid schemas. I implemented a generalized process for iterating through Excel worksheets by row and column, along with fallback logic that attempted to match each row against multiple possible schemas. After completing the Excel-to-data functionality ahead of schedule, I expanded the library to support exporting data from SQLite to text and Excel formats.

Beyond the data transformation library, I also updated the build process for the core ANSE engine. I replaced manual builds through the .NET CLI with a Docker Compose configuration to automate and standardize builds and releases. Additionally, I configured GitHub Actions to evaluate test coverage on pushes to development branches against the main release branch.

I also collaborated with two other developers on an Electron-based data dashboard. I developed a table component for handling parameterized SQL queries using React and JavaScript. Although I had less time to contribute to this project than to my other responsibilities, I focused on delivering a well-abstracted component that handled state transitions cleanly and could be easily integrated into the rest of the application or reused elsewhere.

This co-op gave me experience working with data that came from several different tools and formats, and with making the surrounding development process more repeatable. I enjoyed moving between the library, the build workflow, and the dashboard, and seeing how each part helped researchers work with ANSE.
