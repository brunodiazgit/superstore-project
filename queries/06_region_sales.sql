-- Regions with the highest sales and profit  

SELECT
    c.region, 
    SUM(o.sales) as Total_sales, 
    SUM(o.profit) as Total_profit 
FROM orders as o
INNER JOIN customers as c 
ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY Total_sales DESC

--OUTPUT 

 region  | total_sales | total_profit
---------+-------------+--------------
 West    | 363019.9554 |   50408.6839
 East    | 300855.1554 |   27098.7836
 Central | 280432.2719 |   33359.0871
 South   | 152656.0100 |   20647.4526


-- Insight: Regions with the Highest Sales and Profit

-- The West region is the top performer, generating the highest sales and profit.
-- There is a noticeable gap compared to other regions, especially the South.
-- A good next step could be to analyze the specific needs or challenges 
-- in the lower-performing regions to improve product offerings and strategies.

