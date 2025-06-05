--Average shipping time by shipping mode

SELECT 
    ship_mode,
    ROUND(AVG(ship_date - order_date)) as avg_shipping_time_days
FROM orders
GROUP BY ship_mode
ORDER BY avg_shipping_time_days ASC

--OUTPUT

   ship_mode    | avg_shipping_time_days
----------------+------------------------
 Same Day       |                      0
 First Class    |                      2
 Second Class   |                      3
 Standard Class |                      5

-- Insight

-- Same Day shipping is the fastest option, with no delay between order and delivery.
-- First Class and Second Class take 2 and 3 days on average, which is still efficient.
-- Standard Class is the slowest, with an average of 5 days.
-- This information can help us suggest faster options to customers or improve logistics where possible.
