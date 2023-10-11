-- Update users table - MySQL
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL;
-- Update users table - PostgreSQL
ALTER TABLE users
ALTER COLUMN full_name SET NOT NULL,
ALTER COLUMN current_status SET NOT NULL;
-- Insert with constraints
INSERT INTO users (full_name, current_status)
VALUES ('Manual Lorenz', 'self-employed');