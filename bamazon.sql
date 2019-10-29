DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;
USE bamazon_DB;

CREATE TABLE products(
    id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    stock_quantity INT NOT NULL
);
INSERT INTO products(id, product_name, department_name, price, stock_quantity) 
VALUES (0,"Headphones", "Electronics", 159, 1000);
INSERT INTO products(id, product_name, department_name, price, stock_quantity) 
VALUES (1,"Laptop", "Electronics", 1000, 2000);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (2,"Smartphone", "Electronics", 700, 3000);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (3,"Candy", "Food", 1, 5000);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (4,"Canned Fruit", "Food", 3 , 300);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (5,"Lunch Meat", "Food", 5 , 100);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (6,"TShirt ", "Clothing", 30, 350);
INSERT INTO products(id, product_name, department_name, price, stock_quantity)
VALUES (7,"Jeans", "Clothing", 50 , 180);
INSERT INTO products(id, product_name, department_name, price, stock_quantity) 
VALUES (8,"Underwear", "Clothing", 10 , 550);
INSERT INTO products(id, product_name, department_name, price, stock_quantity) 
VALUES (9,"Books", "Books", 4, 1230);
