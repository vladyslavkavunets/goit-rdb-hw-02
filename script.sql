CREATE DATABASE IF NOT EXISTS goit_rdb_hw_02;
USE goit_rdb_hw_02;

CREATE TABLE clients (id INT PRIMARY KEY AUTO_INCREMENT, client_name VARCHAR(255));
CREATE TABLE addresses (id INT PRIMARY KEY AUTO_INCREMENT, address_text VARCHAR(255));
CREATE TABLE products (id INT PRIMARY KEY AUTO_INCREMENT, product_name VARCHAR(255));

CREATE TABLE orders (
    id INT PRIMARY KEY, 
    order_date DATE, 
    client_id INT, 
    address_id INT,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (address_id) REFERENCES addresses(id)
);

CREATE TABLE order_items (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    order_id INT, 
    product_id INT, 
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);