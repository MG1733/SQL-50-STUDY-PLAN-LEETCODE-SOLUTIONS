
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT
S.student_id,
S.student_name,
Sub.subject_name,
COUNT(E.subject_name) AS attended_exams  
FROM Students S 
CROSS JOIN Subjects Sub          -- CROSS JOIN helps to allocate each student with all the subjects in subject table
LEFT JOIN Examinations E ON
S.student_id = E.student_id          --ALIAS(S,E,Sub,attended_exams(in result table))
AND 
Sub.subject_name = E.subject_name
GROUP BY            -- ALL Columns before aggregated function must me grouped for best practice to avoid complications
S.student_id,
S.student_name,
Sub.subject_name
ORDER BY             -- By defalut orders by ascending 
S.student_id,
Sub.subject_name ;