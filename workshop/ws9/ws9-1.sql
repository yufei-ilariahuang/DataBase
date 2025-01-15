# Solution 1 using Window Function
select employee_id, 
       count(*) over(partition by team_id) as team_size
from employee
;
# Solution 2 using Subquery standalone
SELECT employee_id, team_size
FROM Employee AS e
LEFT JOIN (
      SELECT team_id, COUNT(DISTINCT employee_id) AS team_size
      FROM Employee
      GROUP BY team_id
) AS teams
ON e.team_id = teams.team_id
;
