
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation

SELECT 
V.customer_id,
COUNT(V.visit_id) AS "count_no_trans"
FROM Visits "V"
LEFT JOIN Transactions "T" ON
T.visit_id = V.visit_id
WHERE Transaction_id IS NULL
GROUP BY V.customer_id ; 