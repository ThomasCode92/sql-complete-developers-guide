-- Insert employer data
INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES (
    'Learning Inc',
    'Educationstreet 12, London',
    0.87,
    TRUE
  );
-- Insert employer data
INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES (
    'Big Oil Inc',
    'Slipperystreet 110, Houston',
    112.55
  );
-- Insert employer data
INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES (
    'Hipster Food',
    'Avocadostreet 37, Berlin',
    6.12,
    TRUE
  );
-- Insert employer data
INSERT INTO conversations (user_name, employer_name, message)
VALUES (
    'John Doe',
    'Learning Inc',
    'Hi, I like learning'
  );