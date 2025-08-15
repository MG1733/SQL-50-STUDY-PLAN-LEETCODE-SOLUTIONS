
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- See Query Explanation in MYSQL problems

-- NVL is ussed in Oracle to replace null values

SELECT NVL(
(
SELECT num 
FROM
(                                            
SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1
ORDER BY num DESC
)
-- In Oracle rownum is used instaed of limit function but use it by making the query as subquery
WHERE rownum=1),Null
) as num
-- In Oracle Dual is compulsory used which is a default table to handle expressions.
FROM DUAL;
