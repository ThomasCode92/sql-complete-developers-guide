-- Employers table with default values
CREATE TABLE employers (
  company_name VARCHAR(250),
  company_address VARCHAR(300),
  yearly_revenue NUMERIC(5, 2),
  is_hiring BOOLEAN DEFAULT FALSE
);
-- Conversations table with default values
CREATE TABLE conversations (
  user_name VARCHAR(255),
  employer_name VARCHAR(250),
  message TEXT,
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);