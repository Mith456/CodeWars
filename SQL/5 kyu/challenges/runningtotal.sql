SOLUTION:

WITH T AS 
( SELECT LEFT((created_at :: varchar), 10)::date AS Date
FROM posts)
SELECT Date, COUNT(*),SUM(COUNT(*)) OVER (ORDER BY date):: integer as Total
from T
GROUP BY 1
ORDER BY 1
