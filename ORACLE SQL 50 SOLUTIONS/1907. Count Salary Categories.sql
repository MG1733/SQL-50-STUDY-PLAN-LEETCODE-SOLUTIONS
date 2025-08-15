
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation

-- Here Union combines all the queries by removing duplicates
SELECT 
"category",
"accounts_count"
FROM
(
SELECT 
'Low Salary' AS "category",
SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS "accounts_count"
FROM
Accounts

Union

SELECT 
'Average Salary' AS "category",
SUM(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 ELSE 0 END) AS "accounts_count"
FROM
Accounts

UNION

SELECT 'High Salary' AS "category",
SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) AS "accounts_count"
FROM
Accounts
) 
ORDER BY "accounts_count" DESC;