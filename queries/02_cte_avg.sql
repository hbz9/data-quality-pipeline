-- Example CTE: compare each region's unemployment rate with national average (per year)
WITH avg_rate AS (
  SELECT year, AVG(unemployment_rate) AS avg_unemp_rate
  FROM unemployment
  WHERE unemployment_rate IS NOT NULL AND month IS NULL
  GROUP BY year
)
SELECT
  r.region_name,
  u.year,
  u.unemployment_rate,
  a.avg_unemp_rate
FROM unemployment u
JOIN avg_rate a ON a.year = u.year
JOIN region r ON r.region_id = u.region_id
WHERE u.month IS NULL
  AND u.unemployment_rate IS NOT NULL
ORDER BY u.year, u.unemployment_rate DESC;
