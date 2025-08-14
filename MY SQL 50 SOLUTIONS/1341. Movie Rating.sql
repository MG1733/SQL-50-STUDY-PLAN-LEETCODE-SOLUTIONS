
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

(
SELECT 
U.name AS results
FROM Users U
JOIN MovieRating M ON
M.user_id = U.user_id
GROUP BY 
U.name
ORDER BY 
COUNT(rating) DESC,
U.name ASC
LIMIT 1            -- Takes only first row
)

UNION ALL           -- UNION ALL combines two queries without removing duplicates

(                   -- ALIIAS(M,U,T,results(in result table))
SELECT 
T.title AS results
FROM Movies T 
LEFT JOIN MovieRating M ON
M.movie_id = T.movie_id
WHERE DATE_FORMAT(created_at,'%Y-%m') = '2020-02'   -- DATE_FORMAT can give the required format we want from date
GROUP BY 
T.title
ORDER BY 
AVG(rating) DESC,
T.title ASC
LIMIT 1
); 