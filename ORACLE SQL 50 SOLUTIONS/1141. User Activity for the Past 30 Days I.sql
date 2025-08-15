
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial explanation

SELECT 
-- To_char function converts other formats into strings to get a required result easily(IN Oracle)
To_char(activity_date,'YYYY-MM-DD') AS "Day",
count(DISTINCT user_id) AS "active_users"
FROM
Activity
WHERE activity_date
-- For every date formats use DATE keyword before to analyse it as a date and can directly perated with numbers
BETWEEN DATE '2019-07-27' - 29 AND DATE '2019-07-27'
GROUP BY 
To_char(activity_date,'YYYY-MM-DD');