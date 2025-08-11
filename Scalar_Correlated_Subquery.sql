-- 1) Scalar subquery: Returns the highest salary in the company
SELECT first_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Output:
-- first_name | salary
-- Alice      | 90000


-- 2) Correlated subquery: Compare each salary to the department average
SELECT first_name, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- Output:
-- first_name | salary
-- Alice      | 90000
-- John       | 70000
-- Sarah      | 75000
