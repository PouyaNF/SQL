-- Example table rows:
-- id | department | salary
-- 1  | HR         | 50000
-- 2  | IT         | 60000
-- 3  | HR         | 55000
-- 4  | Sales      | 70000
-- 5  | IT         | 65000

-- 1) Group by department with average salary
SELECT department, AVG(salary) AS "Average Salary"
FROM employees
GROUP BY department;
-- Output:
-- department | Average Salary
-- HR         | 52500
-- IT         | 62500
-- Sales      | 70000

-- 2) Group by department and filter groups using HAVING
SELECT department, COUNT(*) AS "Employee Count"
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;
-- Output:
-- department | Employee Count
-- HR         | 2
-- IT         | 2

-- 3) Group by multiple columns
SELECT department, salary, COUNT(*) AS "Count"
FROM employees
GROUP BY department, salary;
-- Output:
-- department | salary | Count
-- HR         | 50000  | 1
-- HR         | 55000  | 1
-- IT         | 60000  | 1
-- IT         | 65000  | 1
-- Sales      | 70000  | 1
