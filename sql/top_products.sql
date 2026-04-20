SELECT 
  product_id,
  COUNT(order_id) AS total_orders,
  SUM(sale_price) AS revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;