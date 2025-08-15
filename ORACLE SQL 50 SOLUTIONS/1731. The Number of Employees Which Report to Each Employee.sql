
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
SELECT 
E.employee_id,
E.name,
COUNT(M.reports_to) AS "reports_count",
ROUND(AVG(M.age)) AS "Average_age" 
FROM Employees "E"
JOIN Employees "M" ON
M.reports_to = E.employee_id
GROUP BY 
E.employee_id,
E.name
HAVING COUNT(M.reports_to) >= 1
Order by E.employee_id ASC; 