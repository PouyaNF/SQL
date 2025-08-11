-- Example table: employees
-- Columns: id, first_name, last_name, department, salary

-- Get specific columns
SELECT first_name, last_name
FROM employees;
-- Output:
-- first_name | last_name
-- John       | Smith
-- Jane       | Doe
-- Mark       | Brown

-- Get all columns
SELECT *
FROM employees;
-- Output:
-- id | first_name | last_name | department | salary
-- 1  | John       | Smith     | Sales      | 50000
-- 2  | Jane       | Doe       | IT         | 60000
-- 3  | Mark       | Brown     | HR         | 55000
