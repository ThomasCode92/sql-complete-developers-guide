SELECT * FROM sales
WHERE volume >= 1000;

SELECT * FROM sales
WHERE is_recurring IS TRUE;

SELECT * FROM sales
WHERE is_disputed Is TRUE AND volume > 5000;
