# Day5-Sql-internship

# Task 5 – SQL Joins (Inner, Left, Right, Full)

## Objective
Learn to combine data from multiple tables using various JOIN operations.

## Tools Used
- MySQL Workbench / DB Browser for SQLite

## Tables Created
1. **Customers**
   - `customer_id` (Primary Key)
   - `customer_name`
   - `country`

2. **Orders**
   - `order_id` (Primary Key)
   - `customer_id` (Foreign Key to Customers)
   - `order_date`
   - `amount`

## Queries Included
1. **INNER JOIN** → Returns records with matching values in both tables.
2. **LEFT JOIN** → Returns all records from left table, plus matches from right table.
3. **RIGHT JOIN** → Returns all records from right table, plus matches from left table.
4. **FULL OUTER JOIN** → Returns all records from both tables (MySQL uses UNION of LEFT + RIGHT).
