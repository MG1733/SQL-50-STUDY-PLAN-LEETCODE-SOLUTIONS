
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH product AS 
(
SELECT 
*,
RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) AS R  -- ALIAS(R)
FROM Products 
WHERE change_date <= '2019-08-16'     -- change_date starts from starting and end with '2019-08-16'
)
-- Taking results from product(cte)
SELECT 
product_id,
new_price AS price
FROM PRODUCT  
WHERE R = 1

UNION                -- Joins two queries removing duplicates

SELECT 
product_id,
10 AS price
FROM Products 
WHERE product_id NOT IN 
( -- Here only product_id gives the exact result (checks the entire row)
SELECT 
product_id             
FROM products
WHERE change_date <= '2019-08-16'
);