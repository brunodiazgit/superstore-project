-- Total sales, profit and orders per year.

SELECT 
    DATE_PART('year', order_date) as Year,
    SUM(sales) as Total_sales, 
    SUM(profit) as Total_profit, 
    COUNT(DISTINCT order_id) as Total_orders 
FROM orders
GROUP BY Year
ORDER BY Year DESC

--OUTPUT

 year | total_sales | total_profit | total_orders
------+-------------+--------------+--------------
 2017 | 354470.8149 |   43734.7964 |         1687
 2016 | 312780.4898 |   42444.7152 |         1315
 2015 | 221878.9240 |   24544.4137 |         1038
 2014 |  207833.164 |   20790.0819 |          969

-- Insight

-- Sales, profit, and the number of orders increased every year from 2014 to 2017.
-- This shows the business has been growing steadily over time.
-- It would be useful to check which product categories or regions helped the most, 
-- so we can understand what worked well and keep improving.




