-- Example table rows:
-- id | first_name | department | salary
-- 1  | John       | HR         | 50000
-- 2  | Jane       | IT         | 60000
-- 3  | Mark       | HR         | 55000
-- 4  | Alice      | Sales      | 70000

-- 1) Unique departments
SELECT DISTINCT department
FROM employees;
-- Output:
-- department
-- HR
-- IT
-- Sales

-- 2) Unique department–salary combinations
SELECT DISTINCT department, salary
FROM employees;
-- Output:
-- department | salary
-- HR         | 50000
-- IT         | 60000
-- HR         | 55000
-- Sales      | 70000

-- 3) Count of unique departments
SELECT COUNT(DISTINCT department) AS "Unique Departments"
FROM employees;
-- Output:
-- Unique Departments
-- 3
