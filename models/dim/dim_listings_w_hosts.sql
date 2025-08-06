WITH
  l AS (
    SELECT *
    FROM {{ ref('dim_listings_cleansed') }}
  ),
  h AS (
    SELECT *
    FROM {{ ref('dim_hosts_cleansed') }}
  )

SELECT
  l.listing_id,
  l.listing_name,
  l.room_type,
  l.minimum_nights,
  l.price,
  l.host_id,
  h.hosts_name      AS host_name,            -- let op de kolomnaam: hosts_name
  -- h.is_superhost  AS host_is_superhost,     -- alleen opnemen als die kolom écht bestaat
  l.created_at,
  GREATEST(l.updated_at, h.updated_at) AS updated_at
FROM l
LEFT JOIN h
  ON h.hosts_id = l.host_id                   -- let op hosts_id ipv host_id
