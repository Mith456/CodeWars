WITH T AS 
(SELECT a.id as category_id, category, title, b.views as views, b.id as post_id,
rank() over ( partition by b.category_id order by b.views desc, b.id asc) as rank
FROM categories a
LEFT JOIN posts b
ON a.id= b. category_id
GROUP BY 1,2,3,5)
select category_id, category, title :: varchar, views :: integer, post_id
from t
where rank<=2
order by category, views desc, post_id asc
