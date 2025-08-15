
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

SELECT 
ROUND
(
SUM(CASE WHEN(SELECT MIN(A.event_date) FROM Activity "A" WHERE A.player_id = B.player_id) =
 B.event_date - 1 
THEN 1 ELSE 0 END)/NULLIF(COUNT(DISTINCT B.player_id),0),2
-- Nullif is used to avoid zero division error in Oracle
) AS "fraction"
FROM Activity "B"; 
