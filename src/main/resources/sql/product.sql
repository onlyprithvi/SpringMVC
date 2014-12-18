CREATE DATABASE IF NOT EXISTS springmvc;

USE springmvc;

    	  CREATE TABLE product (
            id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            NAME VARCHAR(30) NOT NULL,
            reservedOrOpenStatus TINYINT(1),
            is_approved_by_admin  TINYINT(1) DEFAULT FALSE ,
            `product_detail_id` INT(6) NOT NULL,
            owner_id INT(6) default NULL,
            FOREIGN KEY(owner_id) REFERENCES `user`(`id`),
            FOREIGN KEY(product_detail_id) REFERENCES product_detail(`id`)

	    );

      CREATE TABLE product_detail(
          id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
          productStatus VARCHAR(255),
          price BIGINT,
          sellerId INT(6) ,
          postedDate DATE,
          detail TEXT,
          imagePath VARCHAR(255),
          description varchar (255)

      );


   	CREATE TABLE USER(
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
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
