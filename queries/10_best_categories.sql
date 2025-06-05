--Category with average sales higher than the global average

SELECT 
    p.category,
    ROUND(AVG(o.sales)) as avg_category_sales
FROM products as p
INNER JOIN orders as o
ON p.product_id = o.product_id
GROUP BY category
HAVING AVG(o.sales) > (SELECT AVG(sales) FROM orders)
ORDER BY avg_category_sales DESC

--OUTPUT 

  category  | avg_category_sales
------------+--------------------
 Technology |                438
 Furniture  |                339

