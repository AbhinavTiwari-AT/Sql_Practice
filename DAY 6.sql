use sqlpractice;

select * from employees;

select * from users;

select * from products;

select * from customers;

select * from orders;

INSERT INTO users (id,name,email,age) VALUES
(123,"Abhinav Tiwari","abhinav@gmail.com",23);

UPDATE employees SET salary = 900000 WHERE id = 5;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM orders WHERE order_date < '2023-01-01';

ALTER TABLE customers ADD phone_number VARCHAR(15);

DELETE FROM users WHERE email = null;

INSERT INTO products (id,name,category,price) VALUES (6,"Fan","Electronics",2000);

UPDATE employees SET salary = salary * 1.10 WHERE department = "HR";

DELETE FROM orders WHERE total_amount = 0;

ALTER TABLE employees ADD CONSTRAINT chk_salary_positive CHECK (salary >= 0);

DELETE a FROM customers a JOIN customers b ON a.name = b.name AND a.id > b.id;
