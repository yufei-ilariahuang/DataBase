# Solution1 Recusive with CTE
WITH RECURSIVE id_seq AS (
    SELECT 1 as continued_id
    UNION 
    SELECT continued_id + 1
    FROM id_seq
    WHERE continued_id < (SELECT MAX(customer_id) FROM Customers) 
)
#select * from id_seq
SELECT continued_id AS ids
FROM id_seq
WHERE continued_id NOT IN (SELECT customer_id FROM Customers)  
;
