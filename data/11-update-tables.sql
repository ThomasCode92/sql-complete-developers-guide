-- Update employers table - MySQL
ALTER TABLE employers
MODIFY COLUMN yearly_revenue FLOAT;
-- Update users table - MySQL
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300);
-- 
-- Update employers table - PostgreSQL
ALTER TABLE employers
ALTER COLUMN yearly_revenue
SET DATA TYPE FLOAT;
-- Update users table - PostgreSQL
ALTER TABLE users
ALTER COLUMN full_name
SET DATA TYPE VARCHAR(300);