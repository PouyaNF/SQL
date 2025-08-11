-- Sample table: employees
-- employee_id | first_name | salary
-- 1           | John       | 50000
-- 2           | Jane       | 60000

-- 1) INSERT INTO: Add a new employee
INSERT INTO employees (employee_id, first_name, salary)
VALUES (3, 'Mark', 55000);

-- employees table after INSERT:
-- employee_id | first_name | salary
-- 1           | John       | 50000
-- 2           | Jane       | 60000
-- 3           | Mark       | 55000

-- 2) UPDATE: Give Jane a raise
UPDATE employees
SET salary = 65000
WHERE first_name = 'Jane';

-- employees table after UPDATE:
-- employee_id | first_name | salary
-- 1           | John       | 50000
-- 2           | Jane       | 65000
-- 3           | Mark       | 55000

-- 3) DELETE: Remove Mark from the table
DELETE FROM employees
WHERE first_name = 'Mark';

-- employees table after DELETE:
-- employee_id | first_name | salary
-- 1           | John       | 50000
-- 2           | Jane       | 65000
