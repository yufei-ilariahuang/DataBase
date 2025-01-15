select distinct a.seat_id
 from cinema a, cinema b
where abs(a.seat_id - b.seat_id) = 1
  and a.free = 1 and b.free = 1
order by a.seat_id
;

-- Using LEAD() and  LAG()
SELECT
    seat_id
FROM
    (SELECT
        seat_id,
        free,
        LAG(free,1) OVER (ORDER BY seat_id) as free_lag,
        LEAD(free,1) OVER (ORDER BY seat_id) as free_lead
    FROM cinema ) as t
WHERE (free=1 AND free_lag=1)
OR (free=1 AND free_lead=1)
;
