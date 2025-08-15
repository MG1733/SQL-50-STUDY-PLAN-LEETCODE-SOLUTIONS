
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial explanation

SELECT 
P.project_id,
ROUND(AVG(E.experience_years),2) AS "average_years"
FROM Project "P" 
LEFT JOIN Employee "E" ON  
E.employee_id = P.employee_id
GROUP BY project_id;