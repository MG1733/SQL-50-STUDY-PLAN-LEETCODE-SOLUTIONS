
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
patient_id,
patient_name,
conditions
FROM Patients
WHERE REGEXP_LIKE(conditions,'(^DIAB1| DIAB1)'); 
-- Regexp_like function matches the exact pattern required Where ^ indicates the starting character, |(or).