
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH manager_name AS         -- CTE named manager_name stores result of employees reporting 
(
SELECT 
E.id,
E.name,
count(E.id) AS no_of_reports 
FROM employee E
JOIN employee M ON             -- ALIAS(E,M,no_of_reports)
M.managerid=E.id
GROUP BY 
E.id,
E.name
)
-- Needed result from CTE
SELECT 
name 
FROM manager_name 
WHERE no_of_reports >= 5;    -- Atleast also includes minimum value here which is 5