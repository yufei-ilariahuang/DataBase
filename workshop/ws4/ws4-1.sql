# Solution 1: Subquery + Group
SELECT player_id,
       device_id
FROM  Activity
WHERE (player_id, event_date) IN 
		(SELECT player_id, min(event_date)
		 FROM Activity
		 GROUP BY player_id) 
;
# Solution 2: same as 1 but using join instead of IN
SELECT a.player_id
        ,a.device_id
FROM 
    (SELECT player_id
            ,min(event_date) AS min_date
    FROM Activity
    GROUP BY player_id) dt
JOIN Activity a ON a.player_id = dt.player_id
AND a.event_date = dt.min_date
;
# Solution 3: Window function
SELECT  DISTINCT player_id,
        FIRST_VALUE(device_id) OVER(PARTITION BY player_id
					ORDER BY event_date ASC) AS device_id 
FROM Activity ;


