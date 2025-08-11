-- Sample data:
-- Table: employees
-- first_name | department_id
-- John       | 1
-- Mark       | 3
-- Jane       | 2
-- Emily      | 4

-- Table: contractors
-- first_name | department_id
-- John       | 1
-- Alice      | 3
-- Emily      | 4
-- Robert     | 5

-- 1) UNION: All unique names from employees and contractors
SELECT first_name FROM employees
UNION
SELECT first_name FROM contractors;
-- Output:
-- first_name
-- John
-- Mark
-- Jane
-- Emily
-- Alice
-- Robert

-- 2) UNION ALL: Keep duplicates
SELECT first_name FROM employees
UNION ALL
SELECT first_name FROM contractors;
-- Output:
-- first_name
-- John
-- Mark
-- Jane
-- Emily
-- John
-- Alice
-- Emily
-- Robert

-- 3) INTERSECT: Names present in both tables
SELECT first_name FROM employees
INTERSECT
SELECT first_name FROM contractors;
-- Output:
-- first_name
-- John
-- Emily

-- 4) EXCEPT: Employees who are not contractors
SELECT first_name FROM employees
EXCEPT
SELECT first_name FROM contractors;
-- Output:
-- first_name
-- Mark
-- Jane
