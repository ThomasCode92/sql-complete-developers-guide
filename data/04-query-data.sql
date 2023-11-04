SELECT * FROM events
WHERE date_planned >= '2022-06-01' AND min_age = 20
ORDER BY id DESC;
