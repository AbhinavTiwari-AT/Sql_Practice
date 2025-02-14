use sqlpractice;

select * from employees;

select * from users;

select * from products;

select * from customers;

select * from orders;

SELECT employees.name AS Employee_Name, employees.department AS Department_Name
FROM employees;

SELECT orders.id AS Order_ID, customers.name AS Customer_Name, customers.city, orders.order_date, orders.total_amount
FROM orders
JOIN customers ON orders.customer_id = customers.id;

SELECT customers.name AS Customer_Name, orders.id AS Order_ID, orders.order_date, orders.total_amount
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

SELECT customers.name AS Customer_Name, orders.id AS Order_ID, orders.order_date, orders.total_amount
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;

SELECT name AS Employee_Name, salary, hire_date
FROM employees;

SELECT name AS Product_Name, category AS Category_Name
FROM products;

SELECT id AS Order_ID, order_date, total_amount
FROM orders;

SELECT DISTINCT customers.id, customers.name, customers.city
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

SELECT name AS Employee_Name, department AS Department_Name, salary
FROM employees;

SELECT name AS User_Name, email
FROM users;


