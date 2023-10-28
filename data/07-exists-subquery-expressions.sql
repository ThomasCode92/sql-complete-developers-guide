SELECT first_name, last_name
FROM customers
WHERE email = 'max@test.com';

SELECT EXISTS(
  SELECT first_name, last_name
  FROM customers
  WHERE email = 'manu@test.com'
);
