
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
SELECT 
employee_id,
department_id
FROM Employee 
WHERE primary_flag ='Y'
-- UNION Joins two queries with removing duplicates
UNION

SELECT
employee_id,
MIN(department_id) as "department_id"
FROM Employee 
GROUP BY employee_id
HAVING COUNT(department_id) = 1;