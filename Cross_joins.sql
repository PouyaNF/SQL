-- Example tables for reference:

-- products table:
-- product_id | product_name
-- 1          | T-Shirt
-- 2          | Hoodie

-- colors table:
-- color_id | color_name
-- 1        | Red
-- 2        | Blue
-- 3        | Green

SELECT p.product_name, c.color_name
FROM products p
CROSS JOIN colors c;

-- Output:
-- product_name | color_name
-- T-Shirt      | Red
-- T-Shirt      | Blue
-- T-Shirt      | Green
-- Hoodie       | Red
-- Hoodie       | Blue
-- Hoodie       | Green
