#Explain
SELECT viewer_id AS id
#, count(*)
#, count(distinct article_id)
FROM Views
GROUP BY viewer_id, view_date
#HAVING COUNT(*) > 1
HAVING COUNT(DISTINCT article_id) > 1
ORDER BY 1
;
