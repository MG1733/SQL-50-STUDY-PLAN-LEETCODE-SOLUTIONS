
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- See Query Explanation in MYSQL problems
SELECT
ROUND(SUM(tiv_2016),2) AS "tiv_2016"
FROM Insurance
WHERE tiv_2015 IN
(
SELECT 
tiv_2015
FROM 
Insurance
GROUP BY 
tiv_2015
HAVING COUNT(*) > 1
)
AND (LAT,LON) IN
(
SELECT
lat,lon  
FROM Insurance 
GROUP BY 
lat,lon
HAVING COUNT(*) = 1
);