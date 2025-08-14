
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
MAX(DISTINCT salary) AS SecondHighestSalary -- Gives second highest salary
FROM Employee
WHERE salary NOT IN      -- Checks secondhighest salary not in first highest salary to give exact result
(
SELECT MAX(DISTINCT salary) AS FirstHighestSalary -- Gives the first highest salary
FROM Employee 
);                             -- ALIAS(FirstHighestSalary,SecondHighestSalary(in result table))
