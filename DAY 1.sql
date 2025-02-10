
CREATE DATABASE sqlpractice;

USE sqlpractice;


CREATE TABLE users (
		id INT PRIMARY KEY,
		name VARCHAR(50),
		email VARCHAR(100),
		age INT
);
                    
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE
);

CREATE TABLE products (
      id INT PRIMARY KEY,
      name VARCHAR(50),
      category VARCHAR(100),
      price DECIMAL(10,2)
);

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO users (id, name, email, age) VALUES
(1, 'Alice Johnson', 'alice@gmail.com', 25),
(2, 'Bob Smith', 'bob@yahoo.com', 30),
(3, 'Charlie Brown', 'charlie@gmail.com', 22),
(4, 'David White', 'david@hotmail.com', 28),
(5, 'Emma Wilson', 'emma@gmail.com', 35);

INSERT INTO employees (id, name, department, salary, hire_date) VALUES
(1, 'John Doe', 'IT', 60000, '2021-06-15'),
(2, 'Jane Smith', 'HR', 75000, '2019-03-10'),
(3, 'Robert Brown', 'Finance', 50000, '2020-08-25'),
(4, 'Emily Davis', 'IT', 90000, '2022-01-01'),
(5, 'Michael Wilson', 'HR', 55000, '2018-11-05');

INSERT INTO products (id, name, category, price) VALUES
(1, 'iPhone 14', 'Electronics', 999),
(2, 'Samsung TV', 'Electronics', 700),
(3, 'Sofa Set', 'Furniture', 1200),
(4, 'Laptop', 'Electronics', 1500),
(5, 'Dining Table', 'Furniture', 850);

INSERT INTO customers (id, name, city) VALUES
(1, 'Alice Johnson', 'New York'),
(2, 'Bob Smith', 'Los Angeles'),
(3, 'Charlie Brown', 'Chicago'),
(4, 'David White', 'Houston'),
(5, 'Emma Wilson', 'San Francisco');

INSERT INTO orders (id, customer_id, order_date, total_amount) VALUES
(1, 1, '2024-01-05', 1200),
(2, 2, '2024-02-10', 900),
(3, 3, '2023-12-20', 750),
(4, 4, '2023-11-15', 2000),
(5, 5, '2024-01-25', 1800);








