
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH cte AS
(
SELECT 
D.name AS Department,
E.name AS Employee,                 -- ALIAS(E,D,R,(Department,Employee,Salary(in result table)))
E.salary AS Salary,
DENSE_RANK() OVER(PARTITION BY D.name ORDER BY E.salary DESC) AS R 
-- Set rank order by highest salary without skipping further ranks
FROM Employee E
LEFT JOIN Department D ON 
D.id = E.departmentId
)
-- Taking required results from cte
SELECT 
Department, 
Employee, 
Salary 
FROM cte 
WHERE R <= 3; -- Gives top 3 rows based on highest salary without including distinct salaries