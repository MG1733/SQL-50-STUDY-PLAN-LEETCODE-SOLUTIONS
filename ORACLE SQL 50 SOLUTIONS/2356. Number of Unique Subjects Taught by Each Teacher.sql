
-- Letters which are capitalized here indicates the inbuilt keywords in SQL


SELECT 
teacher_id ,
COUNT(DISTINCT subject_id) AS cnt -- counts subject_id without duplicates
FROM Teacher 
GROUP BY 
teacher_id;   