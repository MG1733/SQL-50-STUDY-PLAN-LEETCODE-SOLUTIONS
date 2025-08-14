
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH cte AS 
(
SELECT 
visited_on,
SUM(amount) AS sum1
FROM Customer      -- ALIAS(A,B,sum1(from cte),(visited_on,amount,average_amount(in result table))
GROUP BY visited_on
)
-- Taking needed results from cte
SELECT 
A.visited_on as visited_on,
SUM(B.sum1) AS amount,
ROUND(AVG(B.sum1),2) AS average_amount
FROM cte A
JOIN cte B ON          -- DATE_SUB function subtracts requires days from actual date
B.visited_on BETWEEN DATE_SUB(A.visited_on,INTERVAL 6 DAY) AND A.visited_on
GROUP BY 
A.visited_on
HAVING COUNT(*) = 7  -- Takes the seventh row exactly from 1st row and 8th row from second row and goes on.....
ORDER BY 
A.visited_on;