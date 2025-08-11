-- Example employees table:
-- employee_id | first_name | last_name | department_id
--     1       |   Alice    |  Smith    |     10
--     2       |   Bob      |  Johnson  |     20
--     3       |   Carol    |  Davis    |     10
--     4       |   Dan      |  Miller   |     30

-- Create an index on last_name for faster lookups:
CREATE INDEX idx_last_name
ON employees(last_name);

-- Query using the indexed column:
SELECT * FROM employees
WHERE last_name = 'Smith';

-- Without the index: full table scan.
-- With the index: direct jump to matching rows.
