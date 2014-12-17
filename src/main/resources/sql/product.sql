CREATE DATABASE IF NOT EXISTS springmvc;

USE springmvc;

    	 CREATE TABLE product (
          id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
          NAME VARCHAR(30) NOT NULL,
           reservedOrOpenStatus TINYINT(1),
          is_approved_by_admin  TINYINT(1),
           `product_detail_id` INT(11) DEFAULT NULL,
          KEY `FK23254A0CAF274936` (`product_detail_id`),
          CONSTRAINT `FK23254A0CAF274936` FOREIGN KEY (`id`) REFERENCES `product_detail` (`id`)

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
      email VARCHAR(255),
      phone VARCHAR(255),
      address VARCHAR(255)
	);
