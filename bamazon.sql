DROP DATABASE IF EXISTS Bamazon;
CREATE DATABASE Bamazon;
USE Bamazon;

CREATE TABLE products (
	item_id INTEGER (10) AUTO_INCREMENT NOT NULL,
	product_name VARCHAR (250) NOT NULL,
	department_name VARCHAR (250),
	price DECIMAL(10,2) NOT NULL,
	stock_quantity INTEGER (10) NOT NULL,
	product_sales DECIMAL (10,2) DEFAULT 0.00,
	PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
VALUES ("Men's Golf Shirt", "Clothing Items", "14.99", "50", "0.00"),
	   ("Bowls", "Household Items", "10.00", "100", "0.00"),
	   ("Monopoly", "Toys and Games", "7.99", "25", "0.00"),
	   ("Cereal", "Groceries", "4.99", "75", "0.00"),
	   ("Vacuum Cleaner", "Household Items", "299.00", "14", "0.00"),
	   ("Boondock Saints", "Movies", "19.99", "87", "0.00"),
	   ("Apple Watch", "Electronics", "139.99", "111", "0.00"),
	   ("Women's Dresses", "Clothing Items", "34.99", "200", "0.00"),
	   ("Jenga", "Toys and Games", "6.99", "26", "0.00"),
	   ("Beats Headphones", "Electronics", "199.99", "19", "0.00");

CREATE TABLE departments (
	department_id INTEGER (10) AUTO_INCREMENT NOT NULL,
	department_name VARCHAR (250) NOT NULL,
	over_head_costs DECIMAL (10,2) NOT NULL,
	total_sales DECIMAL (10,2),
	PRIMARY KEY (department_id)
);

INSERT INTO departments (department_name, over_head_costs, total_sales)
VALUES ("Clothing Items", "10.00", "0.00"),
	   ("Household Items", "60.00", "0.00"),
	   ("Toys and Games", "50.00", "0.00"),
	   ("Electronics", "80.00", "0.00"),
	   ("Movies", "66.00", "0.00");
       
       SELECT * FROM products;
