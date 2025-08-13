
-- Letters which are capitalized here indicates the inbuilt keywords in SQL

SELECT 
DISTINCT author_id AS id  -- Gives only unique author_id (no duplicates)
FROM Views 
WHERE 
author_id = viewer_id 
ORDER BY author_id;       -- Default it will arrange in ascending order