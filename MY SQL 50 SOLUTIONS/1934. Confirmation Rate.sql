
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH cte AS            -- CTE stores the result from query inside
(
SELECT
S.user_id,
COUNT(C.action) AS total_request, -- ALIAS(S,C,confirmed,total_request,confirmation_rate(in result table))
sum(CASE WHEN C.action = 'confirmed' THEN 1 end ) AS confirmed -- counts confirmed request alone without null
FROM Signups S
LEFT JOIN Confirmations C ON 
C.user_id = S.user_id
GROUP BY S.user_id
)
-- Taking needed results from CTE
SELECT 
user_id,
ROUND(IFNULL(confirmed/total_request,0),2) AS confirmation_rate -- ifnull(expression,0) sets 0 where Null is present in expression
FROM cte
ORDER BY 
confirmation_rate ASC;            -- In ascenting order 