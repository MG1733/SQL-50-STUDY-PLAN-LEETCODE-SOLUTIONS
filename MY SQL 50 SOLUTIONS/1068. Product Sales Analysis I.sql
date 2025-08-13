
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
product_name,
year,
price 
FROM Sales S                     -- ALIAS(S,P)
JOIN Product P ON                -- JOIN gives the matching values between two tables here
P.product_id = S.product_id ;