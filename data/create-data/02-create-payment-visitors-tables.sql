CREATE TABLE payment_methods (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  name VARCHAR(200)
);

CREATE TABLE tables (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  num_seats INT,
  category VARCHAR(200)
);
