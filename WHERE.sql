-- Example table: employees
-- Columns: id, first_name, last_name, department, salary

-- 1. Filter by department
SELECT first_name, last_name
FROM employees
WHERE department = 'IT';
-- Output:
-- first_name | last_name
-- Jane       | Doe

-- 2. Filter by salary greater than 55000
SELECT first_name, salary
FROM employees
WHERE salary > 55000;
-- Output:
-- first_name | salary
-- Jane       | 60000

-- 3. Multiple conditions with AND
SELECT first_name, department, salary
FROM employees
WHERE department = 'IT' AND salary > 55000;
-- Output:
-- first_name | department | salary
-- Jane       | IT         | 60000

-- 4. Multiple conditions with OR
SELECT first_name, department
FROM employees
WHERE department = 'IT' OR department = 'HR';
-- Output:
-- first_name | department
-- Jane       | IT
-- Mark       | HR

-- 5. Using NOT
SELECT first_name, department
FROM employees
WHERE NOT department = 'Sales';
-- Output:
-- first_name | department
-- Jane       | IT
-- Mark       | HR
