
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
SELECT
P.product_id,
-- nullif in Oracle is used to eliminate zero division error
-- NVL in Oracle is used to replace null values
NVL(ROUND(SUM(P.price * U.units)/NULLIF(SUM(U.units),0),2),0) AS "average_price"
FROM Prices "P"
LEFT JOIN UnitsSold "U" ON
U.product_id = P.product_id
AND
U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY 
P.product_id;