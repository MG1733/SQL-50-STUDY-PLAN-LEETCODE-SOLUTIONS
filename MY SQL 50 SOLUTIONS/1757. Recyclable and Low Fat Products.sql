
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
product_id 
FROM 
Products
WHERE 
low_fats='Y'               -- AND works if both are satisfied
AND 
recyclable='Y';
