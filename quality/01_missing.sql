-- Missing values checks
SELECT COUNT(*) AS missing_population
FROM population
WHERE population IS NULL;

SELECT COUNT(*) AS missing_region_name
FROM region
WHERE region_name IS NULL OR region_name = '';
