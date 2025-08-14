
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
DISTINCT L1.num AS consecutivenums
FROM  Logs L1 
JOIN Logs L2 ON 
L2.id = L1.id + 1            -- Gives the exact consecutive number(occuring 3 times) if only two con joins valids
JOIN Logs L3 ON
L3.id = L1.id + 2
WHERE L1.num = L2.num 
AND
L1.num = L3.num ; 