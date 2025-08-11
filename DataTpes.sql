-- Create a table with different data types
CREATE TABLE products (
    product_id INT PRIMARY KEY,       -- Whole numbers
    product_name TEXT NOT NULL,       -- Text values
    release_date DATE,                -- Calendar date
    in_stock BOOLEAN                   -- True or False
);

-- Insert a row into the products table
INSERT INTO products (product_id, product_name, release_date, in_stock)
VALUES (1, 'Laptop', '2025-08-01', TRUE);

-- Query the table
SELECT * FROM products;

-- Example output:
-- product_id | product_name | release_date | in_stock
--     1      | Laptop       | 2025-08-01   | t
