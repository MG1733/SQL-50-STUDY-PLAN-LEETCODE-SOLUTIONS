
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
id,
CASE WHEN MOD(id,2) = 0 THEN LAG(student) OVER (ORDER BY id) -- Lag takes very previous record
ELSE IFNULL(LEAD(student) OVER (ORDER BY id),student)        -- Lead takes the very next record
END AS student                            -- IFNULL function here replaces null value with last student 
FROM Seat; 