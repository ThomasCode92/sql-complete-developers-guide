-- Task 1: Create database
CREATE DATABASE online_shop;
-- Task 2 & 3: Create and configure tables
CREATE TABLE products (
  name VARCHAR(200),
  price NUMERIC(10, 2),
  description TEXT,
  amount_in_stock SMALLINT,
  image_path VARCHAR(500)
);
-- Task 4: Insert dummy data
INSERT INTO products (price, name, description, amount_in_stock, image_path)
VALUES (
    12.99,
    'A Book',
    'This is a book - and this text could be way longer!',
    39,
    'uploads/images/products/a-book.jpg'
  );