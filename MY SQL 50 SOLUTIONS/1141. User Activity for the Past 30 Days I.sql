
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
activity_date AS day,  -- ALIAS(day,active_uses(all in result table))
COUNT(DISTINCT user_id) AS active_users -- counts user_id without duplicates
FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27',INTERVAL 29 DAY) AND '2019-07-27'
-- DATE_SUB function used in MYSQL to subtract required days from existing date
GROUP BY 
activity_date;