use sqlpractice;

select * from employees;

select * from users;

select * from products;

select * from customers;

select * from orders;

CREATE INDEX idx_email ON users(email);

SELECT * FROM users WHERE email = 'bob@yahoo.com';

SHOW INDEX FROM products;

explain SELECT * FROM orders WHERE customer_id = 5;

ALTER TABLE orders DROP INDEX idx_order_date;

SELECT * FROM orders WHERE customer_id = 10;

CREATE INDEX idx_product_name ON products(name);

SELECT TABLE_NAME, COLUMN_NAME 
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_NAME IS NOT NULL;

SELECT customer_id, COUNT(*) 
FROM orders 
GROUP BY customer_id;

SELECT * FROM orders ORDER BY order_date DESC LIMIT 100 OFFSET 0;




