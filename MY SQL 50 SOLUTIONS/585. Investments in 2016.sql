
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM Insurance 
WHERE tiv_2015 IN 
(
SELECT 
tiv_2015 
FROM Insurance 
GROUP BY tiv_2015 
HAVING COUNT(*) > 1 -- Gives rows as same tiv_2015 value as one or more
)
AND 
(LAT,LON) IN 
(
SELECT 
LAT,LON 
FROM Insurance 
GROUP BY 
LAT,LON 
HAVING COUNT(*) = 1   -- Gives rows exactly who dont have same lat,lon value
); 