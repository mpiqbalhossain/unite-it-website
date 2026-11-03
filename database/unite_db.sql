CREATE DATABASE IF NOT EXISTS unite_db;
USE unite_db;
CREATE TABLE users (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100), email VARCHAR(100) UNIQUE, password_hash VARCHAR(255), role VARCHAR(20) DEFAULT 'customer');
CREATE TABLE products (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(150), price DECIMAL(10,2), image_url VARCHAR(100));
INSERT INTO users (name, email, password_hash, role) VALUES ('Admin', 'admin@uniteit.com.bd', '$2y$10$e.wXq.f2O2m3Z3Z3Z3Z3ZuV3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3Z3', 'admin');
INSERT INTO products (name, price, image_url) VALUES ('HD IP Camera', 4500, '📷'), ('8-Channel DVR', 9800, '🎥');