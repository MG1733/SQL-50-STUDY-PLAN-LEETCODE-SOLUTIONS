
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
E.employee_id,
E.name,
COUNT(M.reports_to) AS reports_count,
ROUND(AVG(M.age)) AS average_age          -- ALIAS(M,E,(reports_count,average_age(in result table)))
FROM EMPLOYEES E 
JOIN EMPLOYEES M ON 
M.reports_to = E.employee_id
GROUP BY 
E.employee_id
HAVING COUNT(M.reports_to) >= 1 -- gives results of atleast 1 employee reporting 
ORDER BY 
E.employee_id; 