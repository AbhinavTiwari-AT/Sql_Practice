use sqlpractice;

DELIMITER //
CREATE PROCEDURE GetTotalOrders(IN customer_id INT, OUT total_orders INT)
BEGIN
    SELECT COUNT(*) INTO total_orders
    FROM orders
    WHERE customer_id = customer_id;
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION TotalSalary(base_salary DECIMAL(10,2), bonus DECIMAL(10,2)) 
RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    RETURN base_salary + bonus;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE InsertProduct(IN pname VARCHAR(100), IN category VARCHAR(50), IN price DECIMAL(10,2))
BEGIN
    INSERT INTO products (name, category, price) VALUES (pname, category, price);
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE UpdateStock(IN product_id INT, IN quantity_sold INT)
BEGIN
    UPDATE products SET stock_quantity = stock_quantity - quantity_sold WHERE id = product_id;
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION DiscountedPrice(price DECIMAL(10,2), discount_percent INT) 
RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    RETURN price - (price * discount_percent / 100);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE DeleteInactiveUsers()
BEGIN
    DELETE FROM users WHERE active = 0;
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION FormatPhone(phone VARCHAR(15)) 
RETURNS VARCHAR(20) DETERMINISTIC
BEGIN
    RETURN CONCAT('(', LEFT(phone, 3), ') ', MID(phone, 4, 3), '-', RIGHT(phone, 4));
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AssignDefaultRole(IN user_id INT)
BEGIN
    INSERT INTO user_roles (user_id, role) VALUES (user_id, 'USER');
END //
DELIMITER ;
