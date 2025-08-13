
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
A.id
FROM weather A     -- ALIAS(A,B)
JOIN weather B ON  -- DATEDIFF is used in MYSQL (Here 1 on RHS tells the day difference between two dates)
DATEDIFF(A.RECORDDATE,B.RECORDDATE) = 1  
WHERE A.temperature > B.temperature ;