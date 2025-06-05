-- Customer segment that generates the most profit

SELECT c.segment, SUM(o.profit) as Total_profit FROM customers as c
INNER JOIN orders as o 
ON c.customer_id = o.customer_id
GROUP BY c.segment 
ORDER BY Total_profit DESC

--OUTPUT 

   segment   | total_profit
-------------+--------------
 Consumer    |   67000.7927
 Corporate   |   34583.7192
 Home Office |   29929.4953

-- Insight

-- The Consumer segment is the most profitable by far, generating over 67,000 in profit.
-- Corporate and Home Office segments show significantly lower profits in comparison.
-- A potential strategy could be to focus on increasing sales or margins 
-- in the Corporate and Home Office segments to reduce the profit gap 
-- and balance overall performance.
