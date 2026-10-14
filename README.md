# SQL Data Cleaning

1. sql-data-cleaning-project

A hands-on SQL project focused on cleaning and preparing a layoffs dataset for analysis.
# SQL Data Cleaning Project

## Overview
This project demonstrates how SQL can be used to clean and prepare a layoffs dataset for analysis. The project was completed using MySQL Workbench, following a tutorial by Alex The Analyst.

## Tools Used
- MySQL
- MySQL Workbench

## Data Cleaning Steps
- Identified duplicate records using `ROW_NUMBER()` and `PARTITION BY`.
- Used a Common Table Expression (CTE) to identify duplicate rows.
- Removed duplicate records from a staging table.
- Standardized inconsistent values and formats.
- Checked and handled missing or NULL values where appropriate.
- Reviewed the dataset for data quality.

## SQL Concepts Practiced
- Common Table Expressions (CTEs)
- Window functions
- `ROW_NUMBER()`
- `TRIM()` and string functions
- `UPDATE` and `DELETE`
- Data quality checks

## Files
- `sql_data_cleaning_project.sql` — SQL queries used in the project.

## Learning Resource
Alex The Analyst — SQL Data Cleaning Project tutorial.

## Learning Outcome
Practised using SQL to identify data quality issues, remove duplicate records, and prepare a dataset for further analysis.

---

*This is a learning project. The dataset and tutorial are credited to their original sources.*

##SQL Exploratory Data Analysis (EDA)

2. SQL Exploratory Data Analysis (EDA) Project

### Overview
This project explores a layoffs dataset using SQL to identify patterns, trends, and insights related to layoffs across companies, industries, and years. It follows the SQL Data Cleaning Project and uses the cleaned dataset for further analysis.

### Tools Used
- MySQL
- MySQL Workbench
- SQL

### Analysis Performed
- Analysed total layoffs by company and industry.
- Explored layoff trends across different years.
- Used aggregate functions such as `SUM()`, `MAX()`, `MIN()`, and `AVG()`.
- Applied `GROUP BY` and `ORDER BY` to summarize and rank results.
- Used date functions to explore trends over time.

### SQL Concepts Practised
- Aggregate functions
- `GROUP BY` and `ORDER BY`
- Date functions
- Common Table Expressions (CTEs)
- Window functions
- Subqueries

### Key Learning Outcomes
- Practised exploring datasets using SQL.
- Learned to summarize and compare data across categories.
- Developed skills in identifying patterns and trends.
- Improved SQL query-writing and analytical thinking.

### Project File
- `sql_eda_project.sql` — SQL queries used for exploratory data analysis.

### Learning Resource
Alex The Analyst — SQL Exploratory Data Analysis Project.

---

*This project was completed for learning and portfolio development. Credit is given to the original tutorial and dataset source.*
