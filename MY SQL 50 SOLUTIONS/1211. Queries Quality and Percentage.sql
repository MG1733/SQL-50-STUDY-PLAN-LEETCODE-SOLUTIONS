
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
query_name,
ROUND(AVG(rating/position),2) AS quality, -- Both rounded off two decimal places
ROUND(SUM(CASE WHEN RATING < 3 THEN 1 ELSE 0 END) * 100/COUNT(RATING),2) AS poor_query_percentage
-- Gives percentage only for rating less than 3
FROM Queries
GROUP BY  
query_name; 