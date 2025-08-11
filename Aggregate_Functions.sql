-- Example table rows:
-- id | department | salary
-- 1  | Sales      | 50000
-- 2  | Sales      | 55000
-- 3  | IT         | 60000
-- 4  | IT         | 62000
-- 5  | HR         | 52000

-- 1) Count all rows
SELECT COUNT(*) AS "Total Employees"
FROM employees;
-- Output:
-- Total Employees
-- 5

-- 2) Total salary
SELECT SUM(salary) AS "Total Salary"
FROM employees;
-- Output:
-- Total Salary
-- 279000

-- 3) Average salary
SELECT AVG(salary) AS "Average Salary"
FROM employees;
-- Output:
-- Average Salary
-- 55800

-- 4) Minimum and Maximum salary
SELECT MIN(salary) AS "Lowest Salary",
       MAX(salary) AS "Highest Salary"
FROM employees;
-- Output:
-- Lowest Salary | Highest Salary
-- 50000         | 62000

-- 5) Aggregate functions with GROUP BY
SELECT department,
       COUNT(*) AS "Employee Count",
       SUM(salary) AS "Total Dept Salary",
       AVG(salary) AS "Average Dept Salary",
       MIN(salary) AS "Min Dept Salary",
       MAX(salary) AS "Max Dept Salary"
FROM employees
GROUP BY department;
-- Output:
-- department | Employee Count | Total Dept Salary | Average Dept Salary | Min Dept Salary | Max Dept Salary
-- Sales      | 2              | 105000            | 52500               | 50000           | 55000
-- IT         | 2              | 122000            | 61000               | 60000           | 62000
-- HR         | 1              | 52000             | 52000               | 52000           | 52000
