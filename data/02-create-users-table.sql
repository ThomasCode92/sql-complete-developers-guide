-- PostgreSQL & ENUM -> create a custom type first
CREATE TYPE employment_status as ENUM('employed', 'self-employed', 'unemployed');
-- Create Users Table
CREATE TABLE users(
  full_name VARCHAR(255),
  yearly_salary INT,
  current_status employment_status -- PostgreSQL syntax
  -- current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
);