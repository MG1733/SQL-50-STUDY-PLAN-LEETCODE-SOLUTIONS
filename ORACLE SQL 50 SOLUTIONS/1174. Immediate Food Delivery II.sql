
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problems for partial query explanation
WITH cte AS 
(
SELECT 
-- Always use tablename.* to get all columns when handling with expressions
delivery.*,
-- rownumber() assigns numbers to rows according to order given
row_number() OVER (PARTITION BY customer_id ORDER BY order_date ASC) AS "R"
FROM Delivery
)
-- Taking needed results from cte
SELECT 
round(100*avg(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END),2) AS "immediate_percentage"
FROM cte 
WHERE "R" = 1;
