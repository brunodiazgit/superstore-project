-- Monthly sales evolution in 2017

SELECT
    DATE_PART('year', order_date) as year,
    DATE_PART('month', order_date) as month,
    SUM(sales) as Total_sales
FROM orders 
WHERE DATE_PART('year', order_date) = 2017
GROUP BY year, month
ORDER BY year, month DESC
LIMIT 12
    
-- OUTPUT   

 year | month | total_sales
------+-------+-------------
 2017 |    12 |   41985.946
 2017 |    11 |  62912.3098
 2017 |    10 |   38363.974
 2017 |     9 |   36546.915
 2017 |     8 |   32833.176
 2017 |     7 |   18629.000
 2017 |     6 |  32929.0865
 2017 |     5 |  20244.3764
 2017 |     4 |   17424.475
 2017 |     3 |  20081.9918
 2017 |     2 |   9769.5884
 2017 |     1 |   22749.976

-- INSIGHT
 
-- In 2017, sales showed noticeable fluctuations throughout the year.
-- The highest sales were recorded in November, reaching over 62,000,
-- followed by December with almost 42,000.
-- The lowest month was February, with less than 10,000 in sales.
-- There was a significant increase in the last quarter,
-- suggesting a strong holiday season impact.
-- This pattern might help the company prepare stock and marketing strategies for Q4 in future years.
