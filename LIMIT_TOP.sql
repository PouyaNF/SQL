-- Example table rows for reference:
-- id | first_name | last_name | department | salary
-- 1  | John       | Smith     | Sales      | 50000
-- 2  | Jane       | Doe       | IT         | 60000
-- 3  | Mark       | Brown     | HR         | 55000

-- 1) LIMIT with ORDER BY to get top two salaries (MySQL, PostgreSQL)
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 2;
-- Output:
-- first_name | salary
-- Jane       | 60000
-- Mark       | 55000

-- 2) LIMIT with OFFSET to get the second highest salary
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
-- Output:
-- first_name | salary
-- Mark       | 55000

-- 3) LIMIT without ORDER BY (order may depend on storage / insertion order)
SELECT first_name, salary
FROM employees
LIMIT 2;
-- Output (based on insertion order shown above):
-- first_name | salary
-- John       | 50000
-- Jane       | 60000

-- 4) TOP in Microsoft SQL Server to get top two salaries
SELECT TOP 2 first_name, salary
FROM employees
ORDER BY salary DESC;
-- Output:
-- first_name | salary
-- Jane       | 60000
-- Mark       | 55000

-- 5) SQL Server OFFSET FETCH alternative for pagination
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
OFFSET 0 ROWS
FETCH NEXT 2 ROWS ONLY;
-- Output:
-- first_name | salary
-- Jane       | 60000
-- Mark       | 55000
