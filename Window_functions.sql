-- Example employees table:
-- emp_id | emp_name | dept_id | salary
--   1    | Alice    |   10    | 6000
--   2    | Bob      |   10    | 7000
--   3    | Charlie  |   10    | 7000
--   4    | Diana    |   20    | 6500
--   5    | Evan     |   20    | 6200

SELECT emp_name, dept_id, salary,
       ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS row_num,
       RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rank_num,
       LAG(salary) OVER (PARTITION BY dept_id ORDER BY salary DESC) AS prev_salary,
       LEAD(salary) OVER (PARTITION BY dept_id ORDER BY salary DESC) AS next_salary
FROM employees;

-- Example output:
-- emp_name | dept_id | salary | row_num | rank_num | prev_salary | next_salary
-- Bob      |   10    |  7000  |   1     |    1     |    NULL     |    7000
-- Charlie  |   10    |  7000  |   2     |    1     |    7000     |    6000
-- Alice    |   10    |  6000  |   3     |    3     |    7000     |    NULL
-- Diana    |   20    |  6500  |   1     |    1     |    NULL     |    6200
-- Evan     |   20    |  6200  |   2     |    2     |    6500     |    NULL
