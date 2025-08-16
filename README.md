# SQL Customer Segmentation Project

![SQLite Badge](https://img.shields.io/badge/Database-SQLite-blue)
![SQL Badge](https://img.shields.io/badge/Language-SQL-orange)
![Status Badge](https://img.shields.io/badge/Status-Completed-brightgreen)

## Tech Stack
- **Database:** SQLite 3.50.4  
- **Query Language:** SQL  
- **Tools:** SQLite CLI, Visual Studio Code  
- **Concepts:** Customer Segmentation, RFM Analysis, Window Functions, Conditional Statements

---

## Project Overview
This project demonstrates customer analytics using SQL.  
It performs customer segmentation based on purchase behavior, implements RFM analysis, high-value customer ranking, and moving average spend trends.  
The project showcases advanced SQL skills, including CTEs, window functions, and conditional statements.  
Insights generated can be used for targeted marketing strategies and loyalty programs.

---

## Project Structure / Workflow

# SQL Customer Segmentation Project

![SQLite Badge](https://img.shields.io/badge/Database-SQLite-blue)
![SQL Badge](https://img.shields.io/badge/Language-SQL-orange)
![Status Badge](https://img.shields.io/badge/Status-Completed-brightgreen)

## Tech Stack
- **Database:** SQLite 3.50.4  
- **Query Language:** SQL  
- **Tools:** SQLite CLI, Visual Studio Code  
- **Concepts:** Customer Segmentation, RFM Analysis, Window Functions, Conditional Statements

---

## Project Structure / Workflow

# SQL Customer Segmentation Project

![SQLite Badge](https://img.shields.io/badge/Database-SQLite-blue)
![SQL Badge](https://img.shields.io/badge/Language-SQL-orange)
![Status Badge](https://img.shields.io/badge/Status-Completed-brightgreen)

## Tech Stack
- **Database:** SQLite 3.50.4  
- **Query Language:** SQL  
- **Tools:** SQLite CLI, Visual Studio Code  
- **Concepts:** Customer Segmentation, RFM Analysis, Window Functions, Conditional Statements

---

## Project Overview
This project demonstrates customer analytics using SQL.  
It performs customer segmentation based on purchase behavior, implements RFM analysis, high-value customer ranking, and moving average spend trends.  
The project showcases advanced SQL skills, including CTEs, window functions, and conditional statements.  
Insights generated can be used for targeted marketing strategies and loyalty programs.

---

## Project Structure / Workflow

sql_customer_segmentation/
│
├── setup.sql -- Creates tables (customers, orders)
├── inserts.sql -- Inserts sample data into tables
├── queries.sql -- Analysis queries: total spend, RFM, ranking, moving average
├── customer_segmentation.db -- SQLite database file (auto-created)
└── README.md -- Project documentation


### Workflow Steps
1. Run `setup.sql` → creates tables.  
2. Run `inserts.sql` → inserts sample data.  
3. Run `queries.sql` → runs all analysis queries and outputs results.

---

## Setup Instructions

1. Open terminal and navigate to the project folder:
```bash
cd C:\Projects\sql_customer_segmentation


Start SQLite with a new database:
sqlite3 customer_segmentation.db

Inside SQLite shell, run:
.read setup.sql
.read inserts.sql
.read queries.sql

Exit SQLite:
.exit

This will create the database, populate it with sample data, and run all queries.



Total Spending per Customer:
Insight: Highlights top revenue-generating customers.

| Customer      | Total Spent | Total Orders | Avg Order Value |
| ------------- | ----------- | ------------ | --------------- |
| Michael Queen | \$300       | 1            | \$300           |
| Justin Case   | \$285       | 3            | \$95            |
| Jen South     | \$200.5     | 2            | \$100.25        |
| Edward Juan   | \$200       | 1            | \$200           |
| Tara Davis    | \$125       | 2            | \$62.5          |



RFM Segmentation:
Insight: Shows recency, frequency, and monetary value for targeted marketing.

| Customer ID | Recency | Frequency | Monetary     |
| ----------- | ------- | --------- | ------------ |
| 1           | Churned | Moderate  | Medium Value |
| 2           | Churned | Rare      | Medium Value |
| 3           | Churned | Moderate  | Medium Value |
| 4           | Churned | Rare      | Medium Value |
| 5           | Churned | Moderate  | Medium Value |



High-Value Customer Ranking:
Insight: Identifies top-spending customers for loyalty programs or VIP marketing.

| Customer      | Total Spent | Total Orders | Rank | Tier         |
| ------------- | ----------- | ------------ | ---- | ------------ |
| Michael Queen | \$300       | 1            | 1    | Top Customer |
| Justin Case   | \$285       | 3            | 2    | High Value   |
| Jen South     | \$200.5     | 2            | 3    | High Value   |
| Edward Juan   | \$200       | 1            | 4    | Regular      |
| Tara Davis    | \$125       | 2            | 5    | Regular      |



Moving Average of Customer Spend:
Insight: Shows trends in customer spending over time using moving averages.

| Customer      | Order Date | Order Amount | Moving Avg (Last 2 Orders) |
| ------------- | ---------- | ------------ | -------------------------- |
| Jen South     | 2024-01-10 | \$120.5      | \$120.5                    |
| Jen South     | 2025-03-22 | \$80         | \$100.25                   |
| Edward Juan   | 2025-02-14 | \$200        | \$200                      |
| Tara Davis    | 2024-03-05 | \$50         | \$50                       |
| Tara Davis    | 2024-04-18 | \$75         | \$62.5                     |
| Michael Queen | 2025-05-01 | \$300        | \$300                      |
| Justin Case   | 2024-08-15 | \$60         | \$60                       |
| Justin Case   | 2025-01-07 | \$150        | \$105                      |
| Justin Case   | 2025-03-19 | \$75         | \$112.5                    |


Skills Demonstrated:

SQL Table Creation & Data Insertion

Subqueries and CTEs (WITH)

Window Functions (RANK() OVER, AVG() OVER)

Conditional Statements (CASE WHEN)

Customer Segmentation & Analytics


Summary:

Developed a SQL-based customer segmentation project. Implemented RFM analysis, high-value customer ranking, and moving average spend trends using window functions and CTEs. Results provide actionable insights for targeted marketing strategies and loyalty programs.
