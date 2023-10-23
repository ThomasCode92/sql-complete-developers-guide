CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  supervisor_id INT,
  FOREIGN KEY (supervisor_id) REFERENCES employees (id) ON DELETE SET NULL
);
