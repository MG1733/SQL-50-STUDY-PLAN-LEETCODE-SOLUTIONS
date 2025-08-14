
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH cte AS 
(
SELECT 
P.product_name,
O.order_date,
O.unit
FROM Products P 
JOIN Orders O ON
O.product_id = P.product_id
)
-- Taking required results from cte   -- ALIAS(P,O,unit(in result table))
SELECT 
product_name,
SUM(unit) AS unit
FROM cte 
WHERE LEFT(order_date,7) = '2020-02' -- LEFT function(In MYSQL) used for taking elements starting from left to required character
GROUP BY                             -- syntax--->LEFT(column_name,value)
product_name
HAVING SUM(UNIT) >= 100;