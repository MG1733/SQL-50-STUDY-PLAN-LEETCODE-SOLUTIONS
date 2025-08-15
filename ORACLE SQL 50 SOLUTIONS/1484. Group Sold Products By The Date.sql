
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation

SELECT 
-- To_char function converts other formats into strings to get a required result easily(IN Oracle)
To_char(sell_date,'YYYY-MM-DD') AS "sell_date",
count(DISTINCT product) as "num_sold",
-- LISTAGG function is an aggregate function that concatenates values from multiple rows into a single string, with an optional delimiter(ORACLE)
-- We can give LISTAGG in  required order as well
LISTAGG(product,',') WITHIN group (ORDER BY product ASC) AS "products"
FROM
(
   SELECT DISTINCT sell_date,product FROM Activities 
) 
GROUP BY To_char(sell_date,'YYYY-MM-DD');