-- Example table rows for reference:
-- id | first_name | last_name | department | salary
-- 1  | John       | Smith     | Sales      | 50000
-- 2  | Jane       | Doe       | IT         | 60000
-- 3  | Mark       | Brown     | HR         | 55000

-- 1) Math operations - calculate annual salary
SELECT first_name,
       salary * 12 AS "Annual Salary"
FROM employees;
-- Output:
-- first_name | Annual Salary
-- John       | 600000
-- Jane       | 720000
-- Mark       | 660000

-- 2) Math with addition
SELECT first_name,
       salary + 5000 AS "Salary with Bonus"
FROM employees;
-- Output:
-- first_name | Salary with Bonus
-- John       | 55000
-- Jane       | 65000
-- Mark       | 60000

-- 3) String concatenation (PostgreSQL / SQLite syntax)
SELECT first_name || ' ' || last_name AS "Full Name"
FROM employees;
-- Output:
-- Full Name
-- John Smith
-- Jane Doe
-- Mark Brown

-- 4) String concatenation (MySQL syntax)
SELECT CONCAT(first_name, ' ', last_name) AS "Full Name"
FROM employees;
-- Output:
-- Full Name
-- John Smith
-- Jane Doe
-- Mark Brown
