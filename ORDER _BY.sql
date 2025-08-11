-- 1. Sort by salary in ascending order (default)
SELECT first_name, salary
FROM employees
ORDER BY salary ASC;
-- Output:
-- first_name | salary
-- John       | 50000
-- Mark       | 55000
-- Jane       | 60000

-- 2. Sort by salary in descending order
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;
-- Output:
-- first_name | salary
-- Jane       | 60000
-- Mark       | 55000
-- John       | 50000

-- 3. Sort by department (A-Z), then salary (highest first within each department)
SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;
-- Output:
-- first_name | department | salary
-- John       | Sales      | 50000
-- Mark       | HR         | 55000
-- Jane       | IT         | 60000
