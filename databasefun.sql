CREATE DATABASE qa_resteraunt;

USE qa_resteraunt;

CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
email_address VARCHAR(100) UNIQUE,
uk_phone_number_or_foreign_phone BOOLEAN DEFAULT(0),
phone_number CHAR(11) UNIQUE,
address VARCHAR(100) NOT NULL,
Primary Key(cust_id));

CREATE TABLE menu(
menu_id INT UNIQUE NOT NULL AUTO_INCREMENT,
meal_name VARCHAR(100) NOT NULL,
price DECIMAL NOT NULL,
allergens VARCHAR(100) DEFAULT(1),
PRIMARY KEY(menu_id));


CREATE TABLE Orders(
order_id INT UNIQUE NOT NULL AUTO_INCREMENT,
id INT NOT NULL,
total_price DECIMAL NOT NULL,
allergens VARCHAR(100) default(0),
PRIMARY KEY(order_id),
FOREIGN KEY (id) REFERENCES customers(cust_id));

SELECT * FROM Orders;

ALTER TABLE Orders MODIFY total_price decimal(4,2) DEFAULT(0);

UPDATE Orders set total_price =0 WHERE order_id=10;

INSERT INTO Orders (id) VALUES (1), (2), (3), (4), (5);
SELECT * from customers;
CREATE TABLE order_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
ord_id INT NOT NULL,
meal_id INT NOT NULL,
quantity INT, 
PRIMARY KEY(oi_id),
FOREIGN KEY (ord_id) REFERENCES orders(order_id),
FOREIGN KEY (meal_id) REFERENCES menu(menu_id));

INSERT INTO order_items (ord_id, meal_id, quantity) VALUES (6,4,3), (7,3, 4), (8,2, 1), (9,1,3), (10,2,6);

SELECT * from menu;

INSERT INTO 



INSERT INTO order_items(ord id, meal id, quantity) values (6, 3, 2);

SHOW TABLES;

DESCRIBE customers;

ALTER TABLE customers ADD age INT NOT NULL;

ALTER TABLE menu MODIFY price decimal(4,2) NOT NULL; 

DESCRIBE menu;

ALTER TABLE customers ADD over_18 BOOLEAN;

DESCRIBE customers;

ALTER TABLE customers DROP COLUMN over_18;
describe customers;
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Dan", "dan@icloud.com", 1, "07812567841", "123 Cows Lane", "15");
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Josh", "Josh@msn.com", 1, "07562390760", "19 Sheep Road", "20");
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Sophie", "Sophie@gmail.com", 1, "07206435105", "11 Hen Court", "22");
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Louie", "Louie@gmail.com", 1, "07345612894", "17 Butterfly Road", "55");
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Jane", "Jane@icloud.com", 1, "07345432912", "12 Butterfly Road", "58");

INSERT INTO menu(meal_name, price, allergens) VALUES ("Burger", "8.00", "egg");
INSERT INTO menu(meal_name, price, allergens) VALUES ("Hotdog", "7.00", "onion");
INSERT INTO menu(meal_name, price, allergens) VALUES ("Nachos", "7.00", "onion & dairy");
INSERT INTO menu(meal_name, price, allergens) VALUES ("Pizza", "9.00", "Tomato");

UPDATE customers SET cust_id=1 WHERE cust_id="1";
UPDATE customers SET cust_id=2 WHERE cust_id="2";
UPDATE customers SET cust_id=3 WHERE cust_id="3";
UPDATE customers SET cust_id=4 WHERE cust_id="4";
UPDATE customers SET cust_id=5 WHERE cust_id="5";




DELETE FROM customers WHERE cust_id=5;

INSERT INTO customers(cust_id, cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES (5, "Dave", "Dave@gmail.com", 1, "07432165444", "9 Chicken Row", "19");

DESCRIBE menu;
DELETE from menu where menu_id;
SELECT * FROM customers;

SELECT * FROM menu;

SELECT * FROM customers WHERE (cust_name) LIKE 'd%';

CREATE DATABASE qa_resteraunt;

USE qa_resteraunt;

CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
email_address VARCHAR(100) UNIQUE,
uk_phone_number_or_foreign_phone BOOLEAN DEFAULT(0),
phone_number CHAR(11) UNIQUE,
address VARCHAR(100) NOT NULL,
Primary Key(cust_id));

CREATE TABLE menu(
menu_id INT UNIQUE NOT NULL AUTO_INCREMENT,
meal_name VARCHAR(100) NOT NULL,
price DECIMAL NOT NULL,
allergens VARCHAR(100) DEFAULT(1),
PRIMARY KEY(menu_id));


CREATE TABLE Orders(
order_id INT UNIQUE NOT NULL AUTO_INCREMENT,
id INT NOT NULL,
price DECIMAL NOT NULL,
allergens VARCHAR(100) default(0),
PRIMARY KEY(order_id),
FOREIGN KEY (id) REFERENCES customers(cust_id));

ALTER TABLE Orders ADD FOREIGN KEY (id) REFERENCES customers(cust_id) ON DELETE CASCADE;

ALTER TABLE Orders MODIFY price decimal(4,2) DEFAULT(0);

UPDATE Orders set price =0 WHERE order_id=10;

INSERT INTO Orders (id) VALUES (6), (7), (8), (9), (10);
SELECT * from customers;
CREATE TABLE order_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
ord_id INT NOT NULL,
meal_id INT NOT NULL,
quantity INT, 
PRIMARY KEY(oi_id),
FOREIGN KEY (ord_id) REFERENCES orders(order_id),
FOREIGN KEY (meal_id) REFERENCES menu(menu_id));

ALTER TABLE order_items ADD FOREIGN KEY (ord_id) REFERENCES orders(order_id) ON DELETE CASCADE;
ALTER TABLE order_items ADD FOREIGN KEY (meal_id) REFERENCES menu(menu_id) ON DELETE CASCADE;

INSERT INTO order_items (ord_id, meal_id) VALUES (1,5), (2,6), (3,7), (4,8), (5,5);

SELECT * from menu;

INSERT INTO 



INSERT INTO order_items (ord id, meal id, quantity) values (1, 3, 2);

SHOW TABLES;

DESCRIBE customers;

ALTER TABLE customers ADD age INT NOT NULL;

ALTER TABLE menu MODIFY price decimal(4,2) NOT NULL; 

DESCRIBE menu;

ALTER TABLE customers ADD over_18 BOOLEAN;

DESCRIBE customers;

ALTER TABLE customers DROP COLUMN over_18;
describe customers;
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Dan", "dan@icloud.com", 1, "07812567841", "123 Cows Lane", "15");
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Josh", "Josh@msn.com", 1, "07562390760", "19 Sheep Road", "20");
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Sophie", "Sophie@gmail.com", 1, "07206435105", "11 Hen Court", "22");
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Louie", "Louie@gmail.com", 1, "07345612894", "17 Butterfly Road", "55");
INSERT INTO customers(cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES ("Jane", "Jane@icloud.com", 1, "07345432912", "12 Butterfly Road", "58");

INSERT INTO menu(meal_name, price, allergens) VALUES ("Burger", "8.00", "egg");
INSERT INTO menu(meal_name, price, allergens) VALUES ("Hotdog", "7.00", "onion");
INSERT INTO menu(meal_name, price, allergens) VALUES ("Nachos", "7.00", "onion & dairy");
INSERT INTO menu(meal_name, price, allergens) VALUES ("Pizza", "9.00", "Tomato");

UPDATE customers SET cust_id=1 WHERE cust_id="1";
UPDATE customers SET cust_id=2 WHERE cust_id="2";
UPDATE customers SET cust_id=3 WHERE cust_id="3";
UPDATE customers SET cust_id=4 WHERE cust_id="4";
UPDATE customers SET cust_id=5 WHERE cust_id="5";




DELETE FROM customers WHERE cust_id=5;

INSERT INTO customers(cust_id, cust_name, email_address, uk_phone_number_or_foreign_phone, phone_number, address, age) 
VALUES (5, "Dave", "Dave@gmail.com", 1, "07432165444", "9 Chicken Row", "19");

DESCRIBE menu;
DELETE from menu where menu_id;
SELECT * FROM customers;

SELECT * FROM menu;

SELECT DISTINCT ord_id from order_items WHERE ord_id<=8;

SELECT AVG(price) FROM menu;

SELECT MIN(price) FROM menu;

#Nested queries - A QUERY IN A QURY

SELECT id FROM orders WHERE order_id=2;
SELECT * FROM customers WHERE c_id=5;

SELECT * FROM customers WHERE cust_id=(SELECT id FROM orders WHERE order_id=7);

SELECT meal_id FROM order_items WHERE oi_id=1;
SELECT * FROM items WHERE oi_id=3;


SELECT * FROM customers;
SELECT * FROM menu;
SELECT * FROM orders;
SELECT * FROM order_items;


SELECT * from customers JOIN orders ON customers.cust_id=order_id;
SELECT customers.cust_name, customers.phone_number, orders.order_id FROM customers JOIN orders ON customers.cust_id=orders.id;
SELECT customers.cust_name, customers.email_address, orders.order_id FROM customers JOIN orders ON customers.cust_id=orders.id;

SELECT c.cust_name, c.phone_number, o.order_id FROM customers c JOIN orders o ON c.cust_id=o.id;

SELECT * FROM customers c LEFT OUTER JOIN orders o ON c.cust_id;
SELECT * FROM menu m LEFT OUTER JOIN orders o on m.menu_id;
SELECT * FROM orders o RIGHT outer JOIN customers c ON c.cust_id=o.id;

SELECT c.cust_name, c.phone_number, c.email_address, o.order_id, oi.quantity FROM customers c JOIN orders o ON c.cust_id JOIN order_items oi ON o.order_id=oi.ord_id; 