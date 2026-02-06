SELECT
  r.region_name,
  p.year,
  p.population,
  u.unemployed,
  u.unemployment_rate
FROM region r
JOIN population p ON p.region_id = r.region_id
JOIN unemployment u ON u.region_id = r.region_id AND u.year = p.year
WHERE p.year = 2023
ORDER BY u.unemployment_rate DESC NULLS LAST;
