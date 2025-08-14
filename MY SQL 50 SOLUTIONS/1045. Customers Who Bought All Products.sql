
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
customer_id
FROM Customer 
GROUP BY 
customer_id
HAVING COUNT(DISTINCT product_key) =
(
SELECT                 -- Subquery
COUNT(product_key)     -- Compares both product_key counts from two tables
FROM Product );