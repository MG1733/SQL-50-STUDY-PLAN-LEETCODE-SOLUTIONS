
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

SELECT 
employee_id
FROM Employees 
WHERE salary < 30000 
AND 
manager_id NOT IN 
(
-- Checking manager_id not in the employee_id list
SELECT
employee_id 
FROM Employees
)
ORDER BY employee_id;
