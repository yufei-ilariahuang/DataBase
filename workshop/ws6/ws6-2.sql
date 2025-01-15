# Solution 1: Using Self Join
SELECT a1.player_id, a1.event_date,
SUM(a2.games_played) AS games_played_so_far
FROM activity a1, activity a2
WHERE a1.player_id = a2.player_id
AND a1.event_date >=a2.event_date
GROUP BY a1.player_id, a1.event_date;
# Solution 2: Using window functions
SELECT
player_id, event_date, sum(games_played) over(PARTITION BY player_id ORDER BY event_date)
AS 'games_played_so_far'
FROM activity
ORDER BY player_id, games_played_so_far;
# Solution 3: Using correlated sub query
 SELECT a1.player_id, a1.event_date,
 (SELECT sum(a2.games_played) FROM activity a2
 WHERE a1.player_id = a2.player_id AND a1.event_date >=a2.event_date
 GROUP BY a1.player_id)
 AS games_played_so_far
 FROM activity a1 ORDER BY a1.player_id, games_played_so_far;

