CREATE TABLE cities (
  name VARCHAR(255) PRIMARY KEY
);

CREATE TABLE locations (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, --PostgreSQL syntax
  title VARCHAR(255),
  street VARCHAR(255) NOT NULL,
  house_number VARCHAR(10) NOT NULL,
  postal_code VARCHAR(5) NOT NULL,
  city_name VARCHAR(255), -- MySQL syntax
  FOREIGN KEY (city_name) REFERENCES cities (name) -- MySQL syntax
  -- city_name VARCHAR(200) REFERENCES cities --PostgreSQL syntax
);

CREATE TABLE events (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, --PostgreSQL syntax
  name VARCHAR(255) CHECK (LENGTH(name) > 5) NOT NULL,
  date_planned TIMESTAMP NOT NULL,
  image VARCHAR(255),
  description TEXT NOT NULL,
  max_participants INT CHECK (max_participants > 0),
  min_age INT CHECK (min_age > 0),
  location_id INT, -- MySQL syntax
  FOREIGN KEY (location_id) REFERENCES locations (id) -- MySQL syntax
  -- location_id INT REFERENCES locations --PostgreSQL syntax
);
