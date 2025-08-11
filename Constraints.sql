-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,          -- Unique department ID
    dept_name TEXT UNIQUE NOT NULL    -- Department name must be unique and not empty
);

-- Create employees table with a foreign key
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,           -- Unique employee ID
    emp_name TEXT NOT NULL,           -- Employee name cannot be empty
    dept_id INT,                      -- Department this employee belongs to
    join_date DATE DEFAULT CURRENT_DATE,  -- Default to today's date
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) -- Link to departments table
);

-- Insert a department
INSERT INTO departments (dept_id, dept_name)
VALUES (1, 'IT');

-- Insert an employee without join_date (DEFAULT will be used)
INSERT INTO employees (emp_id, emp_name, dept_id)
VALUES (101, 'Alice', 1);

-- Query employees table
SELECT * FROM employees;

-- Example output:
-- emp_id | emp_name | dept_id | join_date
--  101   | Alice    |    1    | 2025-08-09
