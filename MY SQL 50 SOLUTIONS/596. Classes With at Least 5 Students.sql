
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
class
FROM Courses  
GROUP BY 
class
HAVING COUNT(DISTINCT student) >= 5 ; -- HAVING should be used only after group by  and WHERE should be used before group by