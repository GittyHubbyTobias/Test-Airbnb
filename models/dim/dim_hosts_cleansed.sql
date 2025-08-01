WITH src_hosts AS (
    SELECT *
    FROM {{ ref('src_hosts') }}
)
SELECT
  hosts_id,
  NVL(hosts_name, 'Anonymous') AS hosts_name,
  is_superhost,
  created_at,
  updated_at
FROM src_hosts;
