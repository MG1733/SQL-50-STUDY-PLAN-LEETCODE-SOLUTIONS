


 WITH friends AS 
 (
 SELECT 
 requester_id AS id,
 accepter_id
 FROM REQUESTACCEPTED R1

 UNION ALL              -- Combines two queries without removing duplicates

 SELECT 
 accepter_id AS id,
 requester_id 
 FROM REQUESTACCEPTED R2
 )       
 -- Taking needed results from cte           -- ALIAS(id,num(in result table))
 SELECT id,
 COUNT(accepter_id) AS num
 FROM
 Friends 
 GROUP BY 
 id
 ORDER BY 2 DESC -- Here 2 represents the order number before aggregated function count(Used in MYSQL)
 LIMIT 1;