CREATE TABLE events (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, --PostgreSQL syntax
  name VARCHAR(255) CHECK (LENGTH(name) > 5) NOT NULL,
  date_planned TIMESTAMP NOT NULL,
  image VARCHAR(255),
  description TEXT NOT NULL,
  max_participants INT CHECK (max_participants > 0),
  min_age INT CHECK (min_age > 0)
);
