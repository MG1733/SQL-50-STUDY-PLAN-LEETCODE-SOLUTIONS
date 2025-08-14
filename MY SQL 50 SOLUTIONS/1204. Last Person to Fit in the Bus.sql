
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

WITH total_person AS
(
SELECT 
*,
SUM(weight) OVER (ORDER BY TURN ASC) AS total 
-- Window function Sums all weight of persons according to turn
FROM Queue
)
-- Taking results from total_person(cte)
SELECT 
person_name
FROM total_person
WHERE TOTAL <= 1000      -- End with persons upto 1000 kg
ORDER BY 
total DESC
LIMIT 1;          -- Returns the first row