SELECT 
  EXTRACT(YEAR FROM created_at) AS year,
  EXTRACT(MONTH FROM created_at) AS month,
  SUM(sale_price) AS revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY year, month
ORDER BY year, month;