-- Example sales table:
-- order_id | customer_id | amount
--    1     |     101     |  200
--    2     |     102     |  150
--    3     |     101     |  300
--    4     |     103     |  400

WITH customer_totals AS (
    SELECT customer_id, SUM(amount) AS total_spent
    FROM sales
    GROUP BY customer_id
)
SELECT customer_id, total_spent
FROM customer_totals
WHERE total_spent > 250;

-- Example output:
-- customer_id | total_spent
--     101     |    500
--     103     |    400
