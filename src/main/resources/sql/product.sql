
Drop table if EXISTS TRANSACTIONS;
Drop table if EXISTS product;
Drop table if EXISTS product_detail;
Drop table if EXISTS USER;

 CREATE TABLE product_detail(
          id INT(6)  AUTO_INCREMENT PRIMARY KEY,
          productStatus VARCHAR(255),
          price BIGINT,
          sellerId INT(6) ,
          postedDate DATE,
          detail TEXT,
          imagePath VARCHAR(255),
          description varchar (255)

      );

CREATE TABLE USER(
        id INT(6)  AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        username VARCHAR(255),
        phone1 VARCHAR(255),
        phone2 VARCHAR(255),
        phone3 VARCHAR(255),
        address1 VARCHAR(255),
        address2 VARCHAR(255),
        state VARCHAR(255),
        country VARCHAR(255),
        password VARCHAR(255),
        role VARCHAR(255),
        enabled TINYINT(1) default 1
	);

CREATE TABLE product (
        id INT(6)  AUTO_INCREMENT PRIMARY KEY,
        NAME VARCHAR(30) NOT NULL,
        reservedOrOpenStatus TINYINT(1),
        is_approved_by_admin  TINYINT(1) DEFAULT FALSE ,
        `product_detail_id` INT(6) NOT NULL,
        owner_id INT(6) default NULL,
        FOREIGN KEY(product_detail_id) REFERENCES product_detail(`id`)
    );

CREATE TABLE TRANSACTIONS(
  id INT(6)  AUTO_INCREMENT PRIMARY KEY,
  sellerId int(6) NOT NULL,
  buyerId int(6) NOT NULL,
  transactionDate Date NOT NULL,
  productId int(6) NOT NULL,
  Foreign key(buyerId) REFERENCES USER (id),
  Foreign key(sellerId) REFERENCES USER (id),
 Foreign key(productId) REFERENCES product (id) 
);

INSERT INTO USER(first_name,last_name,username,phone1,phone2,phone3,address1,address2,state,country,PASSWORD,role,enabled)
VALUES
('Admin','Admin','admin@gmail.com','644','256','5677','1000 4th','north street','New York','USA','admin','ROLE_ADMIN',1),
('Prithvi','Adhikari','prithvi@gmail.com','644','256','5677','1000 4th','north street','IA','USA','admin','ROLE_USER',1),
('Suraj','Byanju','suraj@gmail.com','644','256','5677','1000 4th','north street','IA','USA','admin','ROLE_USER',1),
('Dharma','poudel','dharma@gmail.com','644','256','5677','1000 4th','north street','IA','USA','admin','ROLE_USER',1);