
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
WITH cte AS 
(
SELECT 
S.user_id,
SUM(CASE WHEN C.action = 'confirmed' THEN 1 ELSE 0 END) AS "confirmed_count",
COUNT(*) AS "total_request"
FROM Signups "S"
LEFT JOIN Confirmations "C" ON
C.user_id = S.user_id
GROUP BY S.user_id
)
-- Taking results from cte
SELECT 
user_id, 
-- In Oracle NVL is used to replace Null values
round(NVL("confirmed_count"/Nullif("total_request",0),0),2) AS confirmation_rate
FROM cte; 