
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
COALESCE   -- IFNULL can also be used here
(
(
SELECT
num
FROM MyNumbers 
GROUP BY num
HAVING COUNT(num) = 1   -- Gives  numbers which occured only once
ORDER BY 
num DESC
LIMIT 1    -- Limit 1 Gives only the first row
),NUll) AS num
FROM DUAL; -- Optional in MYSQL