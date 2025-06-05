-- Top 5 best-selling products

SELECT
    o.product_id, p.product_name, SUM(o.sales) as Total_sales
FROM orders as o
INNER JOIN products as p
ON o.product_id = p.product_id
GROUP BY o.product_id, p.product_name
ORDER BY Total_sales DESC
LIMIT 5

--OUTPUT

   product_id    |                       product_name                        | total_sales
-----------------+-----------------------------------------------------------+-------------
 TEC-CO-10004722 | Canon imageCLASS 2200 Advanced Copier                     |   30099.914
 OFF-BI-10000545 | GBC Ibimaster 500 Manual ProClick Binding System          |   16437.168
 TEC-MA-10001127 | HP Designjet T520 Inkjet Large Format Printer - 24" Color |    15749.91
 FUR-CH-10002024 | HON 5400 Series Task Chairs for Big and Tall              |   15631.854
 OFF-BI-10004995 | GBC DocuBind P400 Electric Binding System                 |    9254.732