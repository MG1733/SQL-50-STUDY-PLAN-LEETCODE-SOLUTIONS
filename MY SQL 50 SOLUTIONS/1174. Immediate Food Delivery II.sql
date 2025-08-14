
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
ROUND(100 * AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END),2) AS
immediate_percentage -- Gives average percentage only when condition satisfies
FROM      -- First Subquery runs --> Next main query
(
SELECT *, -- * takes all the details from table
RANK() OVER(PARTITION BY customer_id ORDER BY order_date 
-- Window functions (RANK) assigns rank order by order_date here for each customer to take first order
) AS orderdates 
FROM Delivery) AS first_values -- Every derived table must have its alias names
WHERE orderdates = 1; -- filters only first order 