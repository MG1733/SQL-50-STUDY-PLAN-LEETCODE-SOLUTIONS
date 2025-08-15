
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation
SELECT 
S.student_id,
S.student_name,
"Sub".subject_name,
COUNT(E.subject_name) AS "attended_exams"
FROM Students "S"
-- Here Cross Join allocates all the subjects for each students
CROSS JOIN Subjects "Sub" 
LEFT JOIN Examinations "E" ON
E.student_id = S.student_id
AND 
E.subject_name = "Sub".subject_name
GROUP BY 
S.student_id,
S.student_name,
"Sub".subject_name
ORDER BY 
S.student_id,
"Sub".subject_name;
