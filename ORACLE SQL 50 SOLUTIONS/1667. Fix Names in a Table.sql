
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation

SELECT 
user_id, 
-- In Oracle ||(String concatenation operator) is used to concat two or strings together but (In MYSQL concat function is used)
UPPER(SUBSTR(name,1,1)) || LOWER(SUBSTR(name,2)) AS name
FROM Users
ORDER BY user_id;