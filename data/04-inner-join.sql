SELECT u.id, first_name, last_name, street, house_number, city_id
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id;
