-- Example table rows:
-- id | department | salary
-- 1  | Sales      | 50000
-- 2  | Sales      | 55000
-- 3  | IT         | 60000
-- 4  | IT         | 62000
-- 5  | HR         | 52000
-- 6  | HR         | 51000

-- 1) Filtering rows before grouping
SELECT department, AVG(salary) AS "Average Salary"
FROM employees
WHERE salary > 51000
GROUP BY department;
-- Output:
-- department | Average Salary
-- Sales      | 55000
-- IT         | 61000
-- HR         | 52000

-- 2) Filtering groups after aggregation
SELECT department, AVG(salary) AS "Average Salary"
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000;
-- Output:
-- department | Average Salary
-- IT         | 61000

-- 3) Using WHERE and HAVING together
SELECT department, AVG(salary) AS "Average Salary"
FROM employees
WHERE salary > 51000
GROUP BY department
HAVING AVG(salary) > 55000;
-- Output:
-- department | Average Salary
-- IT         | 61000
