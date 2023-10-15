-- Drop all tables
DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;
-- Create users table
CREATE TABLE users (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  full_name VARCHAR(300) NOT NULL,
  yearly_salary INT CHECK (yearly_salary > 0),
  -- current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
  current_status employment_status -- PostgreSQL syntax
);
-- Create employers table
CREATE TABLE employers (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  company_name VARCHAR(250) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue FLOAT CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);
-- Create conversations table
CREATE TABLE conversations (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  id SERIAL PRIMARY KEY, -- PostgreSQL syntax
  user_id INT,
  employers_id INT,
  message TEXT NOT NULL,
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);