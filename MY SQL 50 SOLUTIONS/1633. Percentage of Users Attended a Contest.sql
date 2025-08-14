
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
R.contest_id, 
ROUND(COUNT(DISTINCT R.user_id) * 100/(SELECT COUNT(DISTINCT user_id) FROM users),2) AS percentage
-- Gives percentage rounded off two decimal places (actual/total * 100)
FROM Users U 
JOIN Register R ON 
R.user_id = U.user_id   -- ALIAS(U,R,percentage(in result table))
GROUP BY 
R.contest_id
ORDER BY 
percentage DESC,
R.contest_id ASC;  