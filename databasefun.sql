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
meal_id INT NOT NULL, 
price DECIMAL NOT NULL,
allergens VARCHAR(100) default(0),
PRIMARY KEY(order_id),
FOREIGN KEY (id) REFERENCES customers(cust_id));



INSERT INTO Orders (id) VALUES (6), (7), (8), (9), (10);

CREATE TABLE order_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
ord_id INT NOT NULL,
meal_id INT NOT NULL,
quantity INT, 
PRIMARY KEY(oi_id),
FOREIGN KEY (ord_id) REFERENCES orders(order_id),
FOREIGN KEY (meal_id) REFERENCES menu(menu_id));

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