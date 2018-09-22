WITH T AS 
(
SELECT DATE_TRUNC('month', created_at) :: date AS Date,
COUNT(*) :: integer AS COUNT
FROM posts
GROUP BY 1
ORDER BY 1
)

SELECT *, ROUND(100 * (count-LAG(count,1) OVER ( ORDER BY DATE))
/ LAG(count,1) OVER ( ORDER BY DATE),1) || '%' AS Percent_growth
FROM T
