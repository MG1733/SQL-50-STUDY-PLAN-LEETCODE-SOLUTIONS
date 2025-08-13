
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT          
E.name,    
S.bonus
FROM EMPLOYEE E
LEFT JOIN BONUS S ON   -- LEFT JOIN gives full values on Employee table including matching values
E.empid = S.empid 
WHERE 
S.bonus < 1000 
OR                     -- OR condition returns both rows even it appears seperately
S.bonus IS NULL ;       