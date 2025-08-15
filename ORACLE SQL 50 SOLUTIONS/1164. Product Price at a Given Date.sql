
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial explanation

WITH cte AS
(
SELECT 
-- Always use table_name.* to get all columns when handling with expressions in Oracle
Products.*,
-- rownumber() assigns numbers to rows according to order given
row_number() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS "R"
FROM Products
-- Always use DATE keyword before implementing dates in Oracle
WHERE change_date < = DATE '2019-08-16'
)

SELECT 
product_id,
new_price AS price
FROM cte WHERE "R" = 1
-- UNION combines two queries by eliminating duplicates
UNION

SELECT 
product_id,
10 as price 
FROM products 
WHERE product_id NOT IN 
(
SELECT 
product_id 
FROM Products
-- Always use DATE keyword before implementing dates in Oracle
WHERE change_date <= DATE '2019-08-16'
);
