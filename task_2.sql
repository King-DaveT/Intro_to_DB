CREATE TABLE alx_book_store.Authors(
	author_id INT AUTO_INCREMENT Primary Key,
author_name VARCHAR(215));

CREATE TABLE alx_book_store.Books( 
book_id INT AUTO_INCREMENT,
title VARCHAR(130) NOT NULL,
author_id INT,
price DOUBLE NOT NULL,
publication_date DATE NOT NULL,
PRIMARY KEY (book_id),
FOREIGN KEY (author_id) REFERENCES Authors(author_id));

CREATE TABLE alx_book_store.Customers(
	customer_id INT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT);

CREATE TABLE alx_book_store.Orders(
order_id INT NOT NULL,
customer_id INT,
order_date DATE,
PRIMARY KEY (order_id),
FOREIGN KEY (customer_id) REFERENCES Customers (customer_id));

CREATE TABLE alx_book_store.Order_Details (
orderdetailid INT,
order_id INT ,
book_id  INT ,
quantity DOUBLE,
PRIMARY KEY (orderdetailid),
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id) );