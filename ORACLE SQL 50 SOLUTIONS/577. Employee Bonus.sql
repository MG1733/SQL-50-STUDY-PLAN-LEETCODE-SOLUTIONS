
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

SELECT 
E.name,
B.bonus
FROM Employee "E"
LEFT JOIN Bonus "B" ON
B.empId = E.empId
WHERE B.bonus < 1000 OR B.bonus IS NULL;