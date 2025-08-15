
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
WITH person_weights AS 
(
SELECT 
-- Always use tablename.* to get all columns when handling with expressions
Queue.*,
SUM(weight) OVER (ORDER BY turn ASC) AS "total"
FROM Queue
)
-- Taking needed results from cte
SELECT 
person_name
FROM
(
SELECT 
person_name 
FROM person_weights
WHERE "total" <= 1000
ORDER BY "total" DESC
)
-- IN Oracle there is no LIMIT function hence use rownum to limit and it is used when making respective query as subquery.
WHERE rownum=1;