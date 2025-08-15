
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
WITH cte AS 
(
SELECT 
visited_on,
SUM(amount) AS "total"
FROM Customer
GROUP BY visited_on
ORDER BY visited_on
)
-- cte sums up the amount made in the same date 

SELECT 
-- To_char function converts other formats into strings to get a required result easily(IN Oracle)
To_char(A.visited_on,'YYYY-MM-DD') AS "visited_on",
SUM(B."total") AS "amount",
ROUND(AVG(B."total"),2) AS "average_amount"
FROM cte "A"
JOIN cte "B" ON
-- IN Oracle the dates can be operated with numbers directly(Eg:actualdate - 1)
B.visited_on BETWEEN A.visited_on - 6 AND A.visited_on
GROUP BY A.visited_on
HAVING count(*) = 7
ORDER BY A.visited_on;