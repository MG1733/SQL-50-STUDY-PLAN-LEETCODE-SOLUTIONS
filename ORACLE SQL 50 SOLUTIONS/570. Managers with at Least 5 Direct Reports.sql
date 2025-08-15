
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

SELECT 
M.name
FROM Employee "M"
JOIN Employee "E" ON
E.managerId = M.id
GROUP BY 
M.name,
M.id
HAVING count(M.id) >= 5;