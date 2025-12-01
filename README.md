# iv1351_project
# University Course Planning Database  
This repository contains the database schema, sample data, and queries for the project **Course Layout and Teaching Load Allocations**, developed as part of the course *Data Storage Paradigms (IV1351)* at KTH.

The goal is to model and implement a database for:
- Course layouts
- Teaching activities
- Planned hours
- Teacher allocations
- Salary history
- Skills, job titles, departments, and employees

This README describes how to **create, populate, and test the database**.

---

## 📁 Repository Structure
/create_database.sql -- Creates all tables, sequences, constraints, FK, trigger, function
/insert_test_data.sql -- Inserts all test data for the university
/queries.sql -- Contains required project queries (planned hours, workloads, etc.)
/README.md -- This file
---

# 🏗️ 1. Creating the Database

You can create the database using either **pgAdmin** or **psql** from the terminal.

---

# 📌 Option A – Create Database Using pgAdmin (GUI)

### 1. Create an empty database
1. Open **pgAdmin**
2. Right-click **Databases → Create → Database**
3. Name it, for example: university
### 2. Run the schema script
1. Right-click the new database → **Query Tool**
2. Open the file `create_database.sql`
3. Click **▶ Run**

This will create:
- 15+ tables  
- Constraints (PK, FK, UNIQUE, CHECK)  
- Identity columns  
- The ENUM type `study_period_enum`  
- The trigger function `check_allocation_limit()`  
- The trigger on `allocation`

### 3. Insert the test data
1. Open `insert_test_data.sql` in Query Tool
2. Click **▶ Run**

---

# 📌 Option B – Create Database Using Terminal (psql)

Open a terminal and connect to PostgreSQL:

```bash
psql -U postgres
Create the database:

CREATE DATABASE university;


Connect to it:

\c university


Run the schema:

\i create_database.sql


Insert the data:

\i insert_test_data.sql

✔️ 2. Confirm That Everything Works

Run:

SELECT * FROM course;
SELECT * FROM course_instance;
SELECT * FROM planned_activity;
SELECT * FROM allocation;


To verify schema correctness:

\d course
\d allocation


To verify foreign keys:

SELECT conname, confrelid::regclass AS referenced_table
FROM pg_constraint
WHERE conrelid = 'allocation'::regclass;


To test the trigger:

INSERT INTO allocation(activity_id, worker_id, instance_id, allocated_hours)
VALUES (1, 2, 5, 10);


If the teacher already exceeds the allowed max (default: 4 per period), the trigger prevents it.

📊 3. Example Query: Planned Hours Calculation
SELECT ...


(All queries are found in queries.sql.
