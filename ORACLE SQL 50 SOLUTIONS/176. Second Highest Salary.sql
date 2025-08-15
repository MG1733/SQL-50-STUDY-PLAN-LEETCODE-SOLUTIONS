
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in double quotes which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation

WITH cte AS 
(
SELECT 
Employee.*,
DENSE_RANK() OVER (ORDER BY salary DESC) AS "R"  
FROM Employee
)
SELECT
(
SELECT 
DISTINCT Salary
FROM cte 
WHERE "R" = 2
) AS "SecondHighestSalary"
FROM DUAL; 
-- DUAL acts as a default table in oracle which should be used here for these results                
