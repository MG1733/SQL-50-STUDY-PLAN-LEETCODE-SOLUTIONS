
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
unique_id,
name 
FROM Employees E                -- ALIAS (E,U)             
LEFT JOIN EmployeeUNI U ON      -- LEFT JOIN gives all values in the left table(Employees) including matching values
U.id = E.id ;  