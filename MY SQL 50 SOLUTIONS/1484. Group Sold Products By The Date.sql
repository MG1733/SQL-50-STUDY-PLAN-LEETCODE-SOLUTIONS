
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
sell_date,
COUNT(DISTINCT product) AS num_sold,          -- ALIAS((num_sold,products(in result table))
GROUP_CONCAT(DISTINCT product ORDER BY product ASC ) AS products
FROM Activities                        -- Group concat(MYSQL function) concats all strings seperated by commas as default
GROUP BY sell_date;