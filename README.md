# Customer-Order-Count-in-SSMS
Global Superstore
This repository contains the database environment initialization scripts, exploratory operations, and customer lifecycle segmentations developed inside SQL Server Management Studio (SSMS).
The analytical focus of this project is to parse transaction velocities across the Global_Superstore dataset to profile core customer footprints using transaction frequencies, revenue footprints, and absolute profit yields.
Core Relational Dataset StructureThe analysis target is the primary Global_Superstore ledger table. The processing pipelines pull variables across three operational matrix clusters:
•	Identifiers: Unique consumer account matrices mapping strings to account profiles (Customer_ID, Customer_Name).
•	Fulfillment Data: Distinct transaction identifiers tracking multi-item shopping carts (Order_ID).
•	Financial Ledger Layers: Absolute currency fields tracking gross cash inflows and net income thresholds (Sales, Profit).


Step-by-Step SQL Analysis Pipeline
The codebase executes a logical data lifecycle pathway, broken down into sequential operational phases:
[01 Env Initialization] ──> [02 Data Exploration] ──> [03 Volume Profiling] ──> [04 Value Footprint Extraction]
Step 1: Target Database Environmental Allocation
•	Objective: Allocates an isolated, structured database container inside the active SQL Server database engine instance.

Step 2: Relational Schema Discovery & Exploration
•	Objective: Audits the primary structural boundaries of the newly populated dataset, scanning column layouts and initial row alignments.


Step 3: Global Customer Purchase Volume Profiling
•	Objective: Groups structural transaction logs by unique customer code matrices. By using a unique count aggregator (COUNT(DISTINCT Order_ID)), the query calculates exact lifecycle interactions while filtering out individual item line duplicates checked out within identical single shopping carts.

Step 4: Top 10 High-Value Consumer Segment Extraction
•	Objective: Segments premium client profiles using row constraint operations (TOP 10) paired with rounding algorithms (ROUND) to isolate the business's key economic engines.
•	Volume Standings: Filters and indexes accounts strictly by buying frequency benchmarks.
•	Value Footprint Matrix: Identifies elite revenue generators by cross-sorting multi-variable columns (Sales DESC, Profit DESC) to map absolute customer profitability.

