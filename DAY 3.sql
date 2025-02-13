use sqlpractice;

select * from employees;

select * from users;

select * from products;

select * from customers;

select * from orders;

select count(name) from users;

Select department, avg(salary) from employees group by department;

select MAX(price) , Min(price) from products;

SELECT SUM(total_amount) as total_revenue FROM orders;

select customer_id, count(*) as total_order from orders group by customer_id;

select category , count(*) as total_product from products group by category;

select sum(salary) from employees;

SELECT department, COUNT(*) AS total_employees 
FROM employees 
GROUP BY department;

SELECT customer_id, COUNT(*) AS order_count 
FROM orders 
GROUP BY customer_id 
ORDER BY order_count DESC 
LIMIT 1;

SELECT city, COUNT(*) AS total_customers 
FROM customers 
GROUP BY city;



