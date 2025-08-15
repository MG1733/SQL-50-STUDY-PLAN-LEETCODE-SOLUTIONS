
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

SELECT 
W2.id 
FROM Weather "W1"
JOIN Weather "W2" ON
-- IN Oracle we can use actual date with addition or subtraction of numbers(Eg:recordate + 1)
W2.recordDate = W1.recordDate + 1
AND
W2.temperature > W1.temperature;