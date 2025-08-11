-- Example table rows for reference:
-- employee_id | first_name | manager_id
-- 1           | Alice      | NULL
-- 2           | Bob        | 1
-- 3           | Carol      | 1
-- 4           | Dave       | 2

SELECT e1.employee_id, 
       e1.first_name, 
       e1.manager_id, 
       e2.first_name AS manager_name
FROM employees e1
LEFT JOIN employees e2 
       ON e1.manager_id = e2.employee_id;

-- Output:
-- employee_id | first_name | manager_id | manager_name
-- 1           | Alice      | NULL       | NULL
-- 2           | Bob        | 1          | Alice
-- 3           | Carol      | 1          | Alice
-- 4           | Dave       | 2          | Bob
