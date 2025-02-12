USE sqlpractice;

select * from employees;

select * from users;

select * from products;

select * from customers;

select * from orders;

select * from employees where salary between 50000 And 100000;

select * from products where category in ('Furniture');

select * from orders where order_date >= CURDATE() - interval 30 day;

SELECT * FROM customers WHERE city <> 'New York';

select * from employees order by salary desc limit 5;

select * from customers where city in ('New York', 'Los Angeles');

select * from employees where department <> 'HR';

select * from orders where total_amount > 1000;

select * from users where email like '%gmail%';

select * from employees order by salary desc, name asc;
