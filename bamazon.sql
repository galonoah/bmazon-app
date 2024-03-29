DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products(
  item_id INT(10) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT(10) default 0,
  product_sales DECIMAL(10,2) default 0,
  PRIMARY KEY (item_id)
);

CREATE TABLE departments(
  department_id INT(10) AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  over_head_costs DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (department_id)
);

-- Insert sample data to products table
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Eloquent JavaScript, 3rd Ed', 'Books', 26.23, 100);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('JavaScript The Good Parts', 'Books', 17.59, 160);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Apple iPad', 'Electronics', 429.00, 300);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Nintendo Classic Edition', 'Electronics', 94.90, 350);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Harry Potter: Complete Blue-Ray Collection', 'Movies', 39.99, 800);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Alita: Battle Angel Blue Ray', 'Movies', 18.82, 300);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Hasbro Connect 4', 'Toys', 5.16, 400);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Mr Potato Head Disney', 'Toys', 9.96, 150);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Oculus Quest', 'Electronics', 499.00, 100);
INSERT INTO products (product_name, department_name, price, stock_quantity)
values ('Cartman 148-Piece Tool Set', 'Tools and Equiptment', 24.99, 400);

-- Inset sample data to departments table
INSERT INTO departments (department_name, over_head_costs)
values ('Books', 3500);
INSERT INTO departments (department_name, over_head_costs)
values ('Electronics', 120000);
INSERT INTO departments (department_name, over_head_costs)
values ('Movies', 30000);
INSERT INTO departments (department_name, over_head_costs)
values ('Tools and Equiptment', 5000);

SELECT * FROM products;