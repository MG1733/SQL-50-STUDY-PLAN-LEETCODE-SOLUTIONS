
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

SELECT 
DISTINCT A.num AS "ConsecutiveNums"
FROM Logs "A"
JOIN Logs "B" ON 
B.id = A.id + 1 
AND 
B.num = A.num
JOIN Logs "C" ON
C.id = A.id + 2 
AND C.num = A.num;  