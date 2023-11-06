SELECT 
  e.id AS event_id, e.name, e.date_planned,
  loc.title, loc.street, loc.house_number, loc.city_name
FROM events AS e
INNER JOIN locations AS loc ON e.location_id = loc.id;
