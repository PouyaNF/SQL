-- Example sales table:
-- sale_id | sale_date  | region | amount
--    1    | 2024-01-05 | North  |  1200
--    2    | 2024-01-06 | South  |   800
--    3    | 2024-01-07 | North  |  1500
--    4    | 2024-01-07 | East   |   950
--    5    | 2024-01-08 | South  |  1100

-- Summarize total sales per region:
SELECT region, SUM(amount) AS total_sales
FROM sales
GROUP BY region;

-- Example output:
-- region | total_sales
-- North  |   2700
-- South  |   1900
-- East   |    950

-- Only show regions with total sales over 1000:
SELECT region, SUM(amount) AS total_sales
FROM sales
GROUP BY region
HAVING SUM(amount) > 1000;

-- Example output:
-- region | total_sales
-- North  |   2700
-- South  |   1900
