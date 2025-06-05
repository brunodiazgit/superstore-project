-- Average sales by product category

SELECT p.category, ROUND(AVG(o.sales)) as avg_sales FROM orders as o
INNER JOIN products as p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY avg_sales DESC

--OUTPUT 

    category     | avg_sales
-----------------+-----------
 Technology      |       438
 Furniture       |       339
 Office Supplies |       114

-- Insight

-- Technology and Furniture have the highest average sales, while Office Supplies is much lower.
-- This could be a good opportunity to focus on that category and find ways to improve its performance.
-- For example, working with the marketing team to promote office products might help increase sales.
