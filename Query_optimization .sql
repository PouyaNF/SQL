-- Slow Query Example 1: SELECT * without WHERE
SELECT * FROM customers;
/* This scans all rows and all columns */

/* Improved Query */
SELECT customer_id, customer_name FROM customers WHERE active = TRUE;
/* Filters only active customers, selects needed columns */

-- Slow Query Example 2: Missing index on JOIN column
SELECT o.order_id, c.customer_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;
/* If no index on customer_id, join is slow */

/* Add index */
CREATE INDEX idx_customer_id ON orders(customer_id);

-- Slow Query Example 3: Unnecessary DISTINCT
SELECT DISTINCT customer_id FROM orders;
/* If customer_id is unique in orders, DISTINCT is wasteful */

/* Improved Query */
SELECT customer_id FROM orders;

-- Slow Query Example 4: Subquery instead of JOIN
SELECT customer_name
FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders WHERE total > 100);

/* Improved with JOIN */
SELECT DISTINCT c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total > 100;
