
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
name,
population,
area 
FROM WORLD 
WHERE 
area >= 3000000 
OR 
population >= 25000000;