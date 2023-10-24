CREATE TABLE memberships (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
    -- id SERIAL PRIMARY KEY, --PostgreSQL syntax
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    price NUMERIC(5, 2),
    billing_frequency INT,
    gender VARCHAR(200)
);
