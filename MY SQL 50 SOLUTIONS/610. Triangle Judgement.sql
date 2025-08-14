
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
x,y,z,
CASE WHEN x+y>z AND x+z>y AND y+z>x THEN 'Yes'  -- If any two lines are greater than the third line ,we can form triangle 
ELSE 'No' 
END AS triangle
FROM Triangle; 