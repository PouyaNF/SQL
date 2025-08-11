-- Example employees table:
-- emp_id | emp_name | salary
--   1    | Alice    | 6000
--   2    | Bob      | 7000
--   3    | Charlie  | 4500
--   4    | Diana    | 8000

SELECT emp_name, salary,
       CASE 
           WHEN salary >= 7000 THEN 'High'
           WHEN salary >= 5000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_level
FROM employees;

-- Example output:
-- emp_name | salary | salary_level
-- Bob      | 7000   | High
-- Diana    | 8000   | High
-- Alice    | 6000   | Medium
-- Charlie  | 4500   | Low
