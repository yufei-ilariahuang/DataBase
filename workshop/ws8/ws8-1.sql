select group_id as GROUP_ID, 
       min(player_id) as PLAYER_ID
from Players,
     -- Player with Sum(scores) to get score
     (select player, sum(score) as score 
        from
             -- Select All player and Scores
             (select first_player as player, 
                     first_score as score 
                from Matches
              union all
              select second_player, 
                     second_score 
                from Matches
             ) s
       group by player
     ) PlayerScores
where Players.player_id = PlayerScores.player 
  and (group_id, score) in
        -- Max(score) per group
	(select group_id, max(score)
	   from Players,
                -- Player with Sum(scores) to get max scores
		(select player, sum(score) as score 
                   from
                        -- Select All player and Scores
			(select first_player as player, 
                                first_score as score 
                           from Matches
			 union all
			 select second_player, second_score 
                           from Matches
                        ) s
		 group by player
                ) PlayerScores
	 where Players.player_id = PlayerScores.player
	 group by group_id
        )
group by group_id
;
# Another Solution with WITH
WITH table1 as (
	SELECT first_player as player , 
               first_score as score 
        FROM Matches 
        UNION ALL 
        SELECT second_player, 
               second_score 
        FROM Matches), 
     table2 as (
	SELECT player as player_id, 
               sum(score) as total_score, 
               group_id 
        FROM table1 JOIN Players p 
             ON table1.player = p.player_id 
        GROUP BY player), 
     table3 as (
	SELECT *, 
               rank()over(partition by group_id 
                              order by total_score DESC, player_id ASC
               ) as rank1 
        FROM table2) 

SELECT group_id, 
       player_id 
FROM table3 
WHERE rank1 = 1
;
