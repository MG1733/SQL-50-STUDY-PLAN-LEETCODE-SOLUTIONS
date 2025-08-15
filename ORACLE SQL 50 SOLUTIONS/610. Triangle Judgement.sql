
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- See Query Explanation in MYSQL problems
SELECT 
-- In Oracle use tablename.* to get all columns with expression
Triangle.*,
CASE WHEN  x + y > z AND y + z > x AND z + x > y THEN 'Yes'
ELSE 'No' 
END AS "triangle"
FROM Triangle;