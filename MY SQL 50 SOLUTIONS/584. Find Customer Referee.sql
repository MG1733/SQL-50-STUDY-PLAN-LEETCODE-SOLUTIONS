
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
  
SELECT 
name 
FROM 
Customer
WHERE 
referee_id != 2         -- Gives odd referee_id rows 
OR 
referee_id IS NULL;     -- Gives rows with NULL values




