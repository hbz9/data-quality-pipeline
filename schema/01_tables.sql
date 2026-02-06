CREATE TABLE IF NOT EXISTS region (
  region_id TEXT PRIMARY KEY,
  region_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS population (
  region_id TEXT NOT NULL REFERENCES region(region_id),
  year INT NOT NULL,
  population INT,
  PRIMARY KEY (region_id, year)
);

CREATE TABLE IF NOT EXISTS unemployment (
  region_id TEXT NOT NULL REFERENCES region(region_id),
  year INT NOT NULL,
  month INT,
  unemployed INT,
  unemployment_rate NUMERIC(5,2),
  PRIMARY KEY (region_id, year, month)
);
