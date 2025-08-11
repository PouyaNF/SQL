-- Example INNER JOIN between employees and departments
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;
-- Output:
-- employee_id | first_name | last_name | department_name
-- 101         | John       | Smith     | Sales
-- 102         | Jane       | Doe       | IT
-- 103         | Mark       | Brown     | HR
-- 104         | Emily      | Clark     | IT


-- LEFT JOIN: All employees, with department if available
SELECT e.employee_id, e.first_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;
-- Output:
-- employee_id | first_name | department_name
-- 101         | John       | Sales
-- 102         | Jane       | IT
-- 103         | Mark       | HR
-- 105         | Alice      | NULL  -- no department assigned

-- RIGHT JOIN: All departments, with employee if available
SELECT e.employee_id, e.first_name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;
-- Output:
-- employee_id | first_name | department_name
-- 101         | John       | Sales
-- 102         | Jane       | IT
-- NULL        | NULL       | Marketing -- no employee in this department

-- FULL OUTER JOIN: All employees and departments, matched where possible
SELECT e.employee_id, e.first_name, d.department_name
FROM employees e
FULL OUTER JOIN departments d ON e.department_id = d.department_id;
-- Output:
-- employee_id | first_name | department_name
-- 101         | John       | Sales
-- 102         | Jane       | IT
-- 105         | Alice      | NULL
-- NULL        | NULL       | Marketing
