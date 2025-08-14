
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
P.product_id,
IFNULL(ROUND(SUM(P.price * U.units)/SUM(U.units),2),0) AS average_price
 -- COALESCE can also be alternatively  used for IFNULL only in SQL
FROM Prices P
LEFT JOIN UnitsSold U ON            -- ALIAS(U,P,average_price(in result table))
U.product_id = P.product_id
AND 
U.purchase_date BETWEEN P.start_date AND P.end_date  -- BETWEEN includes start_date and end_date also here
GROUP BY 
P.product_id;
 