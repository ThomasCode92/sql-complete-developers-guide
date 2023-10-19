CREATE TABLE addresses (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(50) NOT NULL,
  city_id INT NOT NULL
);

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(300) NOT NULL,
  address_id INT, -- MySQL syntax (needed for foreign key)
  FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE -- MySQL syntax
  -- address_id INT REFERENCES addresses (id) ON DELETE CASCADE -- PostgreSQL syntax
);

CREATE TABLE cities (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  name VARCHAR(300) NOT NULL
);
