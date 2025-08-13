
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
tweet_id 
FROM 
Tweets
WHERE 
CHAR_LENGTH(content) > 15;        -- CHAR_LENGTH gives the length of character in MYSQL