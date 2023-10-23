SELECT e.id AS employee_id, e.first_name, e.last_name, p.title
FROM employees AS e
LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
LEFT JOIN projects AS p ON pe.project_id = p.id;

SELECT e.id AS employee_id, e.first_name, e.last_name, p.title
FROM employees AS e
INNER JOIN projects_employees AS pe ON pe.employee_id = e.id
LEFT JOIN projects AS p ON pe.project_id = p.id;
