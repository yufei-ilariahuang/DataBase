# Solution 1 using WHEN
SELECT team_id,team_name,
SUM(CASE WHEN team_id=host_team AND host_goals>guest_goals THEN 3
         WHEN team_id=guest_team AND guest_goals>host_goals THEN 3
         WHEN team_id=host_team AND host_goals=guest_goals THEN 1
         WHEN team_id=guest_team AND guest_goals=host_goals THEN 1 ELSE 0 END) as num_points
FROM Teams
LEFT JOIN Matches
ON team_id=host_team OR team_id=guest_team
GROUP BY team_id, team_name
ORDER BY num_points DESC, team_id ASC
;
# Solution 2 using with
with cte as( select *, 
		case when (host_goals > guest_goals) then 3 
		     when (host_goals = guest_goals) then 1 else 0 end as host_point , 
		case when (host_goals < guest_goals) then 3 
		     when (host_goals = guest_goals) then 1 else 0 end as guest_point from matches
), 

cte1 as( select host_team team, 
                sum(host_point) p 
           from cte 
         group by host_team 
         union all 
         select guest_team team, 
                sum(guest_point) p 
           from cte 
         group by guest_team 
), 

cte2 as( select team, 
                sum(p) score 
         from cte1 
         group by team 
) 

select t.team_id, 
       t.team_name, 
       IFNULL(c.score,0) num_points 
  from teams t left join cte2 c on (t.team_id = c.team) 
order by IFNULL(c.score,0) desc, t.team_id
;
