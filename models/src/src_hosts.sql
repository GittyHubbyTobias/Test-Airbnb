WITH raw_hosts AS (
  SELECT * 
  FROM hive_metastore.airbnb_raw.raw_hosts
)
SELECT
  id           AS hosts_id,
  name         AS hosts_name,
  is_superhost,
  created_at,
  updated_at
FROM raw_hosts
















