-- Creating a departments table with a primary key
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Creating an employees table with a foreign key referencing departments
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert data into departments
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Sales'),
(2, 'IT'),
(3, 'HR');

-- Insert data into employees
INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES
(101, 'John', 'Smith', 1),
(102, 'Jane', 'Doe', 2),
(103, 'Mark', 'Brown', 3),
(104, 'Emily', 'Clark', 2);

-- Query showing relationship
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;
-- Output:
-- employee_id | first_name | last_name | department_name
-- 101         | John       | Smith     | Sales
-- 102         | Jane       | Doe       | IT
-- 103         | Mark       | Brown     | HR
-- 104         | Emily      | Clark     | IT
