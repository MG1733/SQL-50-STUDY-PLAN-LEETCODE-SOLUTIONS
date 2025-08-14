
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH players AS
(
SELECT                 
player_id,
MIN(event_date) AS first_date
FROM Activity 
GROUP BY player_id
)
-- Needed result from players(cte)
SELECT ROUND(COUNT(DISTINCT P.player_id)/(SELECT COUNT(DISTINCT player_id) FROM ACTIVITY),2) AS fraction
FROM Players P
JOIN Activity B ON    -- ALIAS(P,B,first_date(from cte),fraction(in result table))
B.player_id = P.player_id 
AND 
B.event_date = DATE_ADD(P.first_date,INTERVAL 1 DAY); 
-- DATE_ADD function in MYSQL adds required number of days to existing date