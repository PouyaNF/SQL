-- 1) IN: Employees in departments 1 or 3
SELECT first_name, department_id
FROM employees
WHERE department_id IN (1, 3);
-- Output:
-- first_name | department_id
-- John       | 1
-- Mark       | 3

-- 2) NOT IN: Employees not in departments 1 or 3
SELECT first_name, department_id
FROM employees
WHERE department_id NOT IN (1, 3);
-- Output:
-- first_name | department_id
-- Jane       | 2
-- Emily      | 4

-- 3) EXISTS: Employees in departments with budget > 100000
SELECT first_name, department_id
FROM employees e
WHERE EXISTS (
    SELECT 1 FROM departments d
    WHERE d.department_id = e.department_id
      AND d.budget > 100000
);
-- Output:
-- first_name | department_id
-- John       | 1
-- Emily      | 4

-- 4) NOT EXISTS: Employees without any projects
SELECT first_name
FROM employees e
WHERE NOT EXISTS (
    SELECT 1 FROM projects p
    WHERE p.employee_id = e.employee_id
);
-- Output:
-- first_name
-- Mark
-- Emily
