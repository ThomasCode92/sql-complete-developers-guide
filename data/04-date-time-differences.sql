-- MySQL syntax
SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
FROM memberships;

-- MySQL syntax
SELECT DATEDIFF(NOW(), membership_start)
FROM memberships;

-- PostgreSQL syntax
SELECT NOW() - membership_start
FROM memberships;
