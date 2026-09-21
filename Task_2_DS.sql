CREATE DATABASE sales_db;
USE sales_db;
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(100),
    order_date DATE,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(150),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    region VARCHAR(50)
);
USE sales_db;

SELECT COUNT(*) FROM orders;

USE sales_db;

SELECT COUNT(*) AS total_records
FROM orders;

SELECT * FROM orders;

SELECT order_id, customer_name, total_price
FROM orders;

SELECT *FROM orders
WHERE region = 'West';

SELECT *FROM orders
ORDER BY total_price DESC;

SELECT SUM(total_price) AS total_sales
FROM orders;

SELECT AVG(total_price) AS average_order_value
FROM orders;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT
    region,
    SUM(total_price) AS total_sales
FROM orders
GROUP BY region;

SELECT
    customer_name,
    SUM(total_price) AS total_spent
FROM orders
GROUP BY customer_name
ORDER BY total_spent DESC;

SELECT
    customer_name,
    SUM(total_price) AS total_spent
FROM orders
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

SELECT
    AVG(total_price) AS average_order_value
FROM orders;

SELECT *
FROM orders
WHERE total_price > (
    SELECT AVG(total_price)
    FROM orders
);

SELECT AVG(total_price)
FROM orders;

SELECT
    order_id,
    customer_name,
    total_price,
    CASE
        WHEN total_price >= 10000 THEN 'High'
        WHEN total_price >= 5000 THEN 'Medium'
        ELSE 'Low'
    END AS order_category
FROM orders;

CREATE TABLE customers AS
SELECT DISTINCT customer_name
FROM orders;

SELECT * FROM customers;

ALTER TABLE customers
ADD COLUMN customer_id INT AUTO_INCREMENT PRIMARY KEY;

SELECT * FROM customers;

ALTER TABLE orders
ADD COLUMN customer_id INT;

UPDATE orders o
JOIN customers c
ON o.customer_name = c.customer_name
SET o.customer_id = c.customer_id;

SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    o.total_price
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

ALTER TABLE orders
ADD COLUMN customer_id INT;

DESCRIBE orders;

UPDATE orders o
JOIN customers c
ON o.customer_name = c.customer_name
SET o.customer_id = c.customer_id;

SELECT
    order_id,
    customer_name,
    customer_id
FROM orders
LIMIT 10;

SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    o.total_price
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;