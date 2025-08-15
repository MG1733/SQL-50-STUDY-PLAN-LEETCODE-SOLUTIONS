
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
SELECT 
P.product_name,
SUM(O.unit) AS "unit"
FROM Products "P" 
JOIN Orders "O" ON 
O.product_id = P.product_id
-- To_char function converts other formats into strings to get a required result easily(IN Oracle)
WHERE To_char(order_date,'YYYY-MM') = '2020-02'
GROUP BY P.product_name 
HAVING SUM(O.unit) >= 100;