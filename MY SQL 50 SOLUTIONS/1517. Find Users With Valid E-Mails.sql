
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
*                                                                        -- * gives all columns present in a table
FROM Users
WHERE                                                                    -- here 'c' indicates case sensitive 
REGEXP_LIKE(mail, '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode\\.com$', 'c');    -- Matches pattern by given condition 