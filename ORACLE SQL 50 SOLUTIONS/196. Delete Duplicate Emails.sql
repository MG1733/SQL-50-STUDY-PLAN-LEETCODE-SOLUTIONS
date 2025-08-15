
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
/* IN Oracle, it’s safest to keep inline comments on their own line 
instead of sticking them in the middle of a SQL expression*/
-- Here Only Special functions and keywords used mainly in Oracle are commented in queries.
-- ALIAS are kept in "double quotes" which makes it case sensitive(works in Oracle SQL)

DELETE 
FROM 
Person "q" 
-- q refers entire row to be deleted and we cant use two references like MYSQL
WHERE EXISTS
-- WHERE EXISTS deletes even it occurs at the first time
(
SELECT 
*
FROM Person "p"
where q.id > p.id 
AND
p.email = q.email
);