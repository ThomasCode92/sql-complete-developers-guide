-- Update users table - Remove '0' data
UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'Michael Smith';
-- Update users table - Add Check Constraint
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);