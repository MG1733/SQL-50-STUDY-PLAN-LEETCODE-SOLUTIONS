
-- Letters which are capitalized here indicates the inbuilt keywords in SQL
-- This query is restricted only to write delete statement 

Delete q
FROM person p , person q  -- In MYSQL we can use two references after from like semi joins.
WHERE q.id > p.id 
AND
q.email = p.email;     -- ALIAS(P,Q)