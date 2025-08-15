
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
SELECT 
query_name,
ROUND(AVG(rating/position),2) AS "quality",
-- nullif in Oracle is used to eliminate zero division error
ROUND(100*COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END) / NULLIF(COUNT(*),0),2) AS "poor_query_percentage"
FROM Queries
GROUP BY 
query_name;