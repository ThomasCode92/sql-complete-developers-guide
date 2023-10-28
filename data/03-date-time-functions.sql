SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
FROM memberships;

-- MySQL syntax
SELECT WEEKDAY(last_checkin) + 1, last_checkin 
FROM memberships;

-- PostgreSQL syntax
SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin 
FROM memberships;

-- MySQL syntax
SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
FROM memberships;

-- PostgreSQL syntax
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;
