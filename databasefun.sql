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
id INT NOT NULL ,
meal_id INT NOT NULL, 
price DECIMAL Not Null,
allergens VARCHAR(100) default(0),
PRIMARY KEY(order_id),
FOREIGN KEY (id) REFERENCES customers(cust_id),
FOREIGN KEY (meal_id) REFERENCES menu(meal_id));

SHOW TABLES;

DESCRIBE customers;

ALTER TABLE customers ADD age INT NOT NULL;

ALTER TABLE menu MODIFY price decimal(4,2) NOT NULL; 

DESCRIBE menu;

ALTER TABLE customers ADD over_18 BOOLEAN;

DESCRIBE customers;

ALTER TABLE customers DROP COLUMN over_18;