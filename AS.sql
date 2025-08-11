-- 1) Column alias
SELECT first_name AS "First Name",
       last_name AS "Last Name"
FROM employees;
-- Output:
-- First Name | Last Name
-- John       | Smith
-- Jane       | Doe
-- Mark       | Brown

-- 2) Column alias with calculation
SELECT first_name AS "First Name",
       salary * 12 AS "Annual Salary"
FROM employees;
-- Output:
-- First Name | Annual Salary
-- John       | 600000
-- Jane       | 720000
-- Mark       | 660000

-- 3) Table alias
SELECT e.first_name, e.salary
FROM employees AS e
ORDER BY e.salary DESC;
-- Output:
-- first_name | salary
-- Jane       | 60000
-- Mark       | 55000
-- John       | 50000
