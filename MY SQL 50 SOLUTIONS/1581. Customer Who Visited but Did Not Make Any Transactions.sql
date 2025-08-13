
-- Letters which are capitalized here indicates the inbuilt keywords in SQL


SELECT 
V.customer_id,
COUNT(V.visit_id) AS Count_no_Trans   -- Count function counts the number of visit_id
FROM Visits V
LEFT JOIN Transactions T ON           -- ALIAS(T,V,count_no_Trans)
V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL        -- IS NULL gives customers with no transactions which is set as default by NULL
GROUP BY V.customer_id ;              -- GROUP BY function gives one aggregated output per customer_id