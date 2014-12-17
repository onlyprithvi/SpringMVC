CREATE DATABASE IF NOT EXISTS springmvc;

USE springmvc;

DROP TABLE product;

CREATE TABLE product (

id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(30) NOT NULL,
description VARCHAR(500),
product_status VARCHAR(50),
 price BIGINT
);


INSERT INTO product(NAME,description,product_status,price) VALUES
('Iron','New Iron','New',1000),
('Cooker','Cooker','New',1000),
('Boiler','Boiler','New',1000),
('Gas','Gas','New',1000);
