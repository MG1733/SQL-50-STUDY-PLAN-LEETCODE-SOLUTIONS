
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
user_id,
CONCAT(UPPER(SUBSTRING(name,1,1)),LOWER(SUBSTRING(name,2))) AS name -- Concat joins the two strings(Used in MYSQL)
FROM Users                     -- Syntax for substring---> substring(column_name,starting_element,ending_element)
ORDER BY user_id;              -- Upper() converts lowercase to uppercase & lower() from uppercase to lowercase
