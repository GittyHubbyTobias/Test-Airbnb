WITH raw_listings AS (
  SELECT *
  FROM hive_metastore.airbnb_raw.raw_reviews
)

SELECT
  listing_id,
  date           AS review_date,
  reviewer_name,
  comments       AS review_text,
  sentiment      AS review_sentiment
FROM raw_listings
