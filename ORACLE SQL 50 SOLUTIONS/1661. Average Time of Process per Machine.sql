
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation

WITH process_time_per_machine AS
(
SELECT 
A.machine_id,
A.process_id,
(B.timestamp-A.timestamp) AS "process_time"
FROM Activity "A"
JOIN Activity "B" ON
B.machine_id=A.machine_id AND
B.process_id=A.process_id AND 
B.activity_type ='end' AND A.activity_type ='start'
)
-- Taking results from process_time_per_machine(cte)
SELECT 
machine_id,
Round(Avg("process_time"),3) AS "processing_time"
FROM Process_time_per_machine
GROUP BY machine_id;