use sqlpractice;

CREATE TRIGGER update_total_amount
BEFORE INSERT ON orders
FOR EACH ROW
SET NEW.total_amount = (SELECT SUM(price) FROM products WHERE id IN (NEW.id));

CREATE TRIGGER default_hire_date
BEFORE INSERT ON employees
FOR EACH ROW
SET NEW.hire_date = IFNULL(NEW.hire_date, CURDATE());

CREATE TABLE salary_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER log_salary_changes
BEFORE UPDATE ON employees
FOR EACH ROW
INSERT INTO salary_history (employee_id, old_salary, new_salary)
VALUES (OLD.id, OLD.salary, NEW.salary);


START TRANSACTION;
INSERT INTO orders (id, customer_id, order_date, total_amount) 
VALUES (6, 3, CURDATE(), 950);
UPDATE customers 
SET city = 'Seattle' 
WHERE id = 3;
COMMIT;

START TRANSACTION;

UPDATE customers 
SET city = 'New York' 
WHERE id = 1;
UPDATE customers 
SET city = 'Los Angeles' 
WHERE id = 2;
COMMIT;


START TRANSACTION;

UPDATE employees 
SET salary = salary + 5000 
WHERE id = 3;
INSERT INTO salary_history (employee_id, old_salary, new_salary)
VALUES (3, (SELECT salary FROM employees WHERE id = 3) - 5000, (SELECT salary FROM employees WHERE id = 3));
COMMIT;