-- Losses per region (profit < 0)

SELECT 
    c.region,
    SUM(o.sales) as Total_sales,
    SUM(o.profit) as Total_profit
FROM orders as o 
INNER JOIN customers as c 
ON o.customer_id = c.customer_id
GROUP BY c.region 
HAVING SUM(o.profit) < 0 
ORDER BY Total_profit ASC

--OUTPUT 

 region | total_sales | total_profit
--------+-------------+--------------
(0 rows)

-- Insight

-- There are no losses across any region, which is a positive result.
-- This means the business is performing well, but it’s important not to slow down.
-- We could look for ways to improve processes and daily tasks 
-- to maintain efficiency and continue growing.
