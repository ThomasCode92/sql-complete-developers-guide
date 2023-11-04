CREATE TABLE locations (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, --PostgreSQL syntax
  title VARCHAR(255),
  street VARCHAR(255) NOT NULL,
  house_number VARCHAR(10) NOT NULL,
  postal_code VARCHAR(5) NOT NULL
);

CREATE TABLE cities (
  name VARCHAR(255) PRIMARY KEY
);
