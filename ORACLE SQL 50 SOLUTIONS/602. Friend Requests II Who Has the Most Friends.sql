
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- See Query Explanation in MYSQL problems

SELECT 
"id",
num
FROM
(
SELECT 
"id",
COUNT(*) AS num
FROM
(
SELECT 
requester_id AS "id",
accepter_id
FROM
RequestAccepted

UNION ALL    -- Combines two queries without eliminating duplicates

SELECT 
accepter_id AS "id",
requester_id
FROM
RequestAccepted
)
GROUP BY "id"
ORDER BY COUNT(*) DESC
)
-- IN Oracle there is no LIMIT function hence use rownum to limit and it is used when making respective query as subquery.
WHERE rownum=1;


