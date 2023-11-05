CREATE TABLE cities (
  name VARCHAR(200) PRIMARY KEY
);

CREATE TABLE locations (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, --PostgreSQL syntax
  title VARCHAR(255),
  street VARCHAR(255) NOT NULL,
  house_number VARCHAR(10) NOT NULL,
  postal_code VARCHAR(5) NOT NULL,
  city_name VARCHAR(255), -- MySQL syntax
  FOREIGN KEY (city_name) REFERENCES cities (name) ON DELETE RESTRICT ON UPDATE CASCADE -- MySQL syntax
  -- city_name VARCHAR(200) REFERENCES cities ON DELETE RESTRICT ON UPDATE CASCADE --PostgreSQL syntax
);

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL syntax
  -- id SERIAL PRIMARY KEY, --PostgreSQL syntax
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthday DATE NOT NULL,
  email VARCHAR(300) NOT NULL
);

CREATE TABLE organizers (
  password VARCHAR(500) NOT NULL,
  user_id INT PRIMARY KEY, -- MySQL syntax
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE -- MySQL syntax
  -- user_id INT PRIMARY KEY REFERENCES users ON DELETE CASCADE --PostgreSQL syntax
);

CREATE TABLE tags (
  name VARCHAR(100) PRIMARY KEY
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
  organizer_id INT, -- MySQL syntax
  FOREIGN KEY (location_id) REFERENCES locations (id) ON DELETE CASCADE, -- MySQL syntax
  FOREIGN KEY (organizer_id) REFERENCES organizers (user_id) ON DELETE CASCADE -- MySQL syntax
  -- location_id INT REFERENCES locations ON DELETE CASCADE, --PostgreSQL syntax
  -- organizer_id INT REFERENCES organizers ON DELETE CASCADE --PostgreSQL syntax
);

CREATE TABLE events_users (
  event_id INT, -- MySQL syntax
  user_id INT, -- MySQL syntax
  FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE, -- MySQL syntax
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE, -- MySQL syntax
  -- event_id INT REFERENCES events ON DELETE CASCADE, --PostgreSQL syntax
  -- user_id INT REFERENCES users ON DELETE CASCADE, --PostgreSQL syntax
  PRIMARY KEY (event_id, user_id)
);

CREATE TABLE events_tags (
  event_id INT, -- MySQL syntax
  tag_name VARCHAR(100), -- MySQL syntax
  FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE, -- MySQL syntax
  FOREIGN KEY (tag_name) REFERENCES tags (name) ON DELETE CASCADE, -- MySQL syntax
  -- event_id INT REFERENCES events ON DELETE CASCADE, --PostgreSQL syntax
  -- tag_name VARCHAR(100) REFERENCES tags ON DELETE CASCADE, --PostgreSQL syntax
  PRIMARY KEY (event_id, tag_name)
);
