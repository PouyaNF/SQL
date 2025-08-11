-- Example tables for reference:

-- employees table:
-- employee_id | first_name | department_id | salary
-- 1           | John       | 1             | 50000
-- 2           | Jane       | 2             | 60000
-- 3           | Mark       | 1             | 55000

-- departments table:
-- department_id | department_name
-- 1             | HR
-- 2             | IT


-- 1) Subquery in WHERE: Find employees earning above average salary
SELECT first_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Subquery result: (SELECT AVG(salary) FROM employees)
-- avg_salary
-- 55000

-- Final output:
-- first_name | salary
-- Jane       | 60000


-- 2) Subquery in SELECT: Show salary and department average together
SELECT first_name, salary,
       (SELECT AVG(salary) FROM employees e2 WHERE e2.department_id = e.department_id) AS dept_avg
FROM employees e;

-- For John (dept 1) subquery returns:
-- dept_avg = (50000 + 55000) / 2 = 52500
-- For Jane (dept 2) subquery returns:
-- dept_avg = 60000
-- For Mark (dept 1) subquery returns:
-- dept_avg = 52500

-- Final output:
-- first_name | salary | dept_avg
-- John       | 50000  | 52500
-- Jane       | 60000  | 60000
-- Mark       | 55000  | 52500


-- 3) Subquery in FROM: Treat subquery result as a table
SELECT department_name, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_stats
JOIN departments d ON dept_stats.department_id = d.department_id;

-- Subquery (dept_stats) result:
-- department_id | avg_salary
-- 1             | 52500
-- 2             | 60000

-- Final output after join:
-- department_name | avg_salary
-- HR              | 52500
-- IT              | 60000

