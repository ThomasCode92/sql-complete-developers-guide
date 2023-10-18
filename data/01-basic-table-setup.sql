CREATE DATABASE sales_example;

CREATE TABLE sales (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  date_created DATE DEFAULT (CURRENT_DATE),
  date_fulfilled DATE,
  customer_name VARCHAR(300) NOT NULL,
  product_name VARCHAR(300) NOT NULL,
  volume NUMERIC(10,3) NOT NULL CHECK (volume >= 0),
  is_recurring BOOLEAN DEFAULT FALSE,
  is_disputed BOOLEAN DEFAULT FALSE
);