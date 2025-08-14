
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT
*                   -- * gets all the details from table
FROM 
Cinema 
WHERE id % 2 != 0   -- takes only odd id rows
AND 
TRIM(description) NOT IN('boring')  -- for safer practice use trim to remove spaces
ORDER BY rating DESC;               -- In descending order