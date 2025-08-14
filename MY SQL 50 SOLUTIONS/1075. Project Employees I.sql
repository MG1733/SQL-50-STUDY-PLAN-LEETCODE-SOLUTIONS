
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT
P.project_id,
ROUND(AVG(E.experience_years),2) AS average_years -- ALIAS(P,E,average_years(in result table))
FROM Project P
JOIN Employee E ON 
E.employee_id = P.employee_id
GROUP BY 
P.project_id; 