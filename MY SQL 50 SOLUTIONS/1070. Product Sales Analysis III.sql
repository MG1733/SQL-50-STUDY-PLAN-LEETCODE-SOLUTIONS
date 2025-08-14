
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH products AS
(
SELECT 
product_id,
MIN(year) AS first_year  
FROM Sales
GROUP BY 
product_id
)
-- Taking needed results from products(cte)
SELECT 
P.product_id,
P.first_year,
B.quantity,      -- ALIAS(P,B,first_year(from cte))
B.price
FROM Products P
JOIN Sales B ON 
B.product_id = P.product_id 
AND
B.year = P.first_year ;
