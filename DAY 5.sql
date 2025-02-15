use sqlpractice;

select * from employees;

select * from users;

select * from products;

select * from customers;

select * from orders;

SELECT * FROM customers 
WHERE id IN (SELECT DISTINCT customer_id FROM orders);

SELECT * FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT MAX(salary) As Second_higest
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);

SELECT * FROM products 
WHERE price > (SELECT AVG(price) FROM products);

SELECT * FROM orders O
WHERE order_date = (SELECT MAX(order_date) FROM orders WHERE customer_id = O.customer_id);

SELECT * FROM employees 
WHERE salary IN (SELECT salary FROM employees GROUP BY salary HAVING COUNT(*) > 1);

SELECT customer_id, COUNT(id) AS total_orders 
FROM orders 
GROUP BY customer_id 
HAVING COUNT(id) > 2;

SELECT p.* 
FROM products p
WHERE price = (SELECT MAX(price) FROM products WHERE category = p.category);

SELECT * FROM employees 
WHERE hire_date < (SELECT MAX(hire_date) FROM employees);

SELECT * FROM users 
WHERE id < (SELECT MAX(id) FROM users);









