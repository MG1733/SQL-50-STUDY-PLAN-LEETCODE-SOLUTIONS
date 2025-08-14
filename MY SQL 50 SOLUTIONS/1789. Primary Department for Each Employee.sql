
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
employee_id,
department_id 
FROM EMPLOYEE 
WHERE primary_flag = 'Y'    -- Gives primary department
UNION                       -- Joins two queries removing duplicates
SELECT 
employee_id,
department_id
FROM Employee
GROUP BY 
employee_id                 
HAVING COUNT(department_id) = 1; 