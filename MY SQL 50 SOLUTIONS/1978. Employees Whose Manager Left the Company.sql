
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
employee_id 
FROM Employees
WHERE salary < 30000
AND 
manager_id NOT IN 
(
SELECT 
employee_id             -- Checks Whether manager_id not in the employee ids
FROM  Employees
)
ORDER BY 
employee_id ;