
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

WITH cte AS
(
SELECT 
D.name AS "Department",
E.name AS "Employee",
E.salary AS "Salary",
DENSE_RANK() OVER (PARTITION BY D.name ORDER BY E.salary DESC) AS "Rank"
FROM Employee "E" 
LEFT JOIN Department "D" ON
D.id = E.departmentId
)
SELECT 
"Department",
"Employee",
"Salary"
FROM cte 
WHERE "Rank" <= 3;      
