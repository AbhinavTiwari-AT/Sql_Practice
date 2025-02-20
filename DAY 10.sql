create database blog;

use blog;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) UNIQUE
);

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE posts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    category_id INT,
    title VARCHAR(255),
    content TEXT,
    likes INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE comments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    post_id INT,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
);

SELECT users.id, users.name, COUNT(posts.id) AS total_posts
FROM users
JOIN posts ON users.id = posts.user_id
GROUP BY users.id
ORDER BY total_posts DESC
LIMIT 5;

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE order_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

SELECT id, name 
FROM customers
WHERE id NOT IN (
    SELECT DISTINCT customer_id 
    FROM orders 
    WHERE order_date >= CURDATE() - INTERVAL 1 YEAR
);

CREATE TABLE post_ratings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

SELECT order_date, COUNT(*) AS total_orders
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 1 YEAR
GROUP BY order_date
ORDER BY total_orders DESC
LIMIT 1;

SELECT u.id, u.name, COUNT(c.id) AS total_comments
FROM users u
JOIN comments c ON u.id = c.user_id
WHERE c.created_at >= DATE_FORMAT(NOW(), '2025-02-01') 
GROUP BY u.id, u.name
HAVING total_comments > 5;