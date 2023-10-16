-- Drop all tables
DROP TABLE users;
-- Create users table
CREATE TABLE users (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  -- full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)), -- MySQL syntax
  full_name VARCHAR(401) GENERATED ALWAYS AS (first_name || ' ' || last_name) STORED, -- PostgreSQL syntax
  yearly_salary INT CHECK (yearly_salary > 0),
  -- current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
  current_status employment_status -- PostgreSQL syntax
);
-- Insert a user
INSERT INTO users (first_name, last_name, yearly_salary, current_status)
VALUES ('John', 'Doe', 19000, 'self-employed')