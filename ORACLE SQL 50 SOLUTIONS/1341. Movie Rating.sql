-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
 SELECT 
name AS "results" 
FROM
(
SELECT 
U.name
FROM Users "U" 
LEFT JOIN MovieRating "M" ON
M.user_id = U.user_id
GROUP BY U.name
ORDER BY COUNT(M.rating) DESC,
U.name ASC
)
-- IN Oracle there is no LIMIT function hence use rownum to limit and it is used when making respective query as subquery.
WHERE rownum = 1
-- UNION ALL joins two queries without eliminating duplicates
UNION ALL

SELECT 
title as "results"
FROM
(
SELECT
"MV".Title
FROM Movies "MV"
LEFT JOIN MovieRating "M" ON
M.movie_id = "MV".movie_id
-- To_char function converts other formats into strings to get a required result easily(IN Oracle)
WHERE To_char(M.created_at,'YYYY-MM') = '2020-02'
GROUP BY "MV".title
ORDER BY AVG(M.rating) DESC,
"MV".title ASC
)
-- IN Oracle there is no LIMIT function hence use rownum to limit and it is used when making respective query as subquery.
WHERE rownum = 1;