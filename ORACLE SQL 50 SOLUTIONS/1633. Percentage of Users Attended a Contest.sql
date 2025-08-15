
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation

SELECT 
R.contest_id,
-- NULLIF in Oracle used to avoid zero division error
ROUND(100*COUNT(R.user_id)/NULLIF((SELECT COUNT(*) FROM Users),0),2) AS "percentage"
FROM Register "R" 
GROUP BY 
R.contest_id
ORDER BY 
"percentage" DESC, 
R.contest_id ASC;
 