-- Example window function: rank regions by unemployment rate within each year
SELECT
  u.year,
  r.region_name,
  u.unemployment_rate,
  RANK() OVER (PARTITION BY u.year ORDER BY u.unemployment_rate DESC) AS rank_in_year
FROM unemployment u
JOIN region r ON r.region_id = u.region_id
WHERE u.month IS NULL
  AND u.unemployment_rate IS NOT NULL
ORDER BY u.year, rank_in_year;
