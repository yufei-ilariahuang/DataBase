# Solution 1 using Window Function
SELECT min(log_id) as start_id, 
       max(log_id) as end_id
FROM
       (SELECT log_id, 
           ROW_NUMBER() OVER(ORDER BY log_id) as num
        FROM Logs) a
GROUP BY log_id - num
;
# Solution 2
WITH tmp AS (
          SELECT log_id, 
                 (log_id - ROW_NUMBER() OVER(ORDER BY log_id)) AS rnk 
          FROM logs) 
SELECT DISTINCT 
    FIRST_VALUE(log_id) OVER(PARTITION BY rnk ORDER BY log_id) AS start_id, 
    FIRST_VALUE(log_id) OVER(PARTITION BY rnk ORDER BY log_id DESC) AS end_id 
FROM tmp 
ORDER BY start_id
;
