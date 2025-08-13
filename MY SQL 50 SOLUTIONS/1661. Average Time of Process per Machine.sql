
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH process AS    -- CTE (COMMON TABLE EXPRESSION) is a Virtual table stores result of query inside it.
(
SELECT 
A.machine_id,
A.process_id,
(B.timestamp - A.timestamp) AS processing_time 
FROM Activity A
JOIN Activity B ON                             --CTE (named as process here)
A.machine_id = B.machine_id                    --ALIAS (A,B,processing_time)
AND
A.process_id = B.process_id 
AND 
A.activity_type = 'start' AND B.activity_type = 'end'
)
-- Taking needed results from Cte
SELECT 
machine_id,
Round(Avg(processing_time),3) AS Processing_time -- Round function rounds the value upto required decimal places
FROM process
GROUP BY machine_id;