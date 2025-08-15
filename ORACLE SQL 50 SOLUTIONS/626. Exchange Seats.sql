
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for query explanation
SELECT 
id,
CASE WHEN mod(id,2) = 0 THEN LAG(student) OVER (ORDER BY id ASC)
ELSE NVL(LEAD(student) OVER (ORDER BY id ASC),student)
-- NVL is Used in Oracle to replace Null values
END AS student
FROM Seat;