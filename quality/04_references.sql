-- Referential integrity check: orphan records in fact tables
SELECT p.*
FROM population p
LEFT JOIN region r ON r.region_id = p.region_id
WHERE r.region_id IS NULL;

SELECT u.*
FROM unemployment u
LEFT JOIN region r ON r.region_id = u.region_id
WHERE r.region_id IS NULL;
