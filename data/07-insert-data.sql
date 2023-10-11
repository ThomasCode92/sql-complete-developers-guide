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
INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES (
    'Big Oil Inc',
    'Slipperystreet 110, Houston',
    112.55,
    FALSE
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
-- Insert conversation data
INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES (
    'John Doe',
    'Learning Inc',
    'Hi, I like learning',
    '2023-10-10 16:32:10'
  )