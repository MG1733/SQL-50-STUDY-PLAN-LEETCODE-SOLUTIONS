
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial explanation

WITH cte AS
(
SELECT 
product_id, 
min(year) AS "first_year"
FROM Sales GROUP BY product_id
)
-- Taking results from cte
SELECT 
S1.product_id,
S1."first_year",
S2.price,
S2.quantity
FROM cte S1
JOIN Sales S2 ON 
S2.product_id = S1.product_id AND
S2.year = S1."first_year"; 
