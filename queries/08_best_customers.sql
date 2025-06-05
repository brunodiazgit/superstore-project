-- Top 10 most profitable customers (based on profit)

SELECT
    c.customer_id, c.customer_name, SUM(o.profit) as Total_profit
FROM customers as c 
INNER JOIN orders as o 
ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY Total_profit DESC
LIMIT 10

--OUTPUT 

 customer_id |  customer_name   | total_profit
-------------+------------------+--------------
 HL-15040    | Hunter Lopez     |    5367.1635
 AB-10105    | Adrian Barton    |    5065.2015
 TA-21385    | Tom Ashbrook     |    3853.3442
 AR-10540    | Andy Reiter      |    2762.4789
 SE-20110    | Sanjit Engle     |    2651.1651
 BS-11365    | Bill Shonely     |    2558.1993
 TB-21400    | Tom Boeckenhauer |    2327.4493
 SR-20740    | Steven Roelle    |    1911.4299
 CM-12655    | Corinna Mitchell |    1578.8551
 AD-10180    | Alan Dominguez   |    1543.1529

-- Insight

-- These are our most profitable customers.
-- We should consider giving them special treatment, 
-- such as exclusive discounts, better prices, or personalized promotions 
-- to maintain loyalty and increase future sales.
