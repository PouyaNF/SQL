-- 1) CREATE TABLE: Create a new table for departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name TEXT NOT NULL
);

-- The table 'departments' is now empty but ready to store data.

-- 2) ALTER TABLE: Add a new column for location
ALTER TABLE departments
ADD COLUMN location TEXT;

-- Now the table has: department_id, department_name, location

-- 3) DROP TABLE: Remove the departments table entirely
DROP TABLE departments;

-- The 'departments' table and all its data are gone.
