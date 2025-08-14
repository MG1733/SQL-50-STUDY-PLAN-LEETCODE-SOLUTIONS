
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
DATE_FORMAT(trans_date,'%Y-%m') AS month, -- DATE_FORMAT gives required format from date
country,
COUNT(state) AS trans_count,           -- ALIAS(all the alias names followed by AS keyword here)
SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END ) AS approved_count, -- counts only approved state
SUM(AMOUNT) AS trans_total_amount,
SUM(CASE WHEN STATE = 'approved' THEN amount ELSE 0 END) AS approved_total_amount 
-- Sums total approved amount
FROM Transactions
GROUP BY 
1,2;