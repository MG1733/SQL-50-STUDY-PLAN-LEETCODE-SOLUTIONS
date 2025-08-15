
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

-- Refer MYSQL problem for partial query explanation

SELECT
patient_id,
patient_name,
conditions
FROM Patients
-- Here like acts as a special operator that matches the required pattern (%-->Matches any character, _ ---> matches one character for one underscore) 
where conditions like 'DIAB1%' OR conditions like '% DIAB1%'; 