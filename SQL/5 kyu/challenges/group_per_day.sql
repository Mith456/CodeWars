SELECT LEFT((created_at::varchar),10)::date as day, description, count(*)
FROM events
WHERE name = 'trained'
GROUP BY 1,2
ORDER BY 1
