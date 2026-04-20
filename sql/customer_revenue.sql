SELECT 
  user_id,
  COUNT(DISTINCT order_id) AS total_orders,
  SUM(sale_price) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY user_id
ORDER BY total_revenue DESC;