# Solution 1
select b.product_name, 
       a.product_id, 
       a.order_id, 
       a.order_date 
  from Orders a join Products b
       on a.product_id = b.product_id
 where (a.product_id, a.order_date) in (
           select product_id, 
                  max(order_date) as order_date
             from Orders
           group by product_id
           )
order by b.product_name, a.product_id, a.order_id
;
# Solution 2
SELECT product_name, product_id, order_id, order_date
FROM (
    SELECT product_name, P.product_id, order_id, order_date, RANK() OVER (PARTITION BY product_name ORDER BY order_date DESC) rnk
    FROM Orders O
    JOIN Products P
    On O.product_id = P.product_id
) temp
WHERE rnk = 1
ORDER BY product_name, product_id, order_id
;
