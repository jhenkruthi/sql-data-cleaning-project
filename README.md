# sql-data-cleaning-project
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
