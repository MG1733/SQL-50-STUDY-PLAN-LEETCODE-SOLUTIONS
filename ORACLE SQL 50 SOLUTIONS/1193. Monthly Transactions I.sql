
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
SELECT 
-- To_char function converts other formats into strings to get a required result easily(IN Oracle)
To_char(trans_date,'YYYY-MM') AS "month",
country,
COUNT(*) AS "trans_count",
SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS "approved_count",
SUM(amount) AS "trans_total_amount",
SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS "approved_total_amount"
FROM Transactions
GROUP BY 
TO_CHAR(trans_date,'YYYY-MM'),
country;