# Solution 1: WITH
with cte as (select *,
                    rank() over (partition by product_id
                                    order by change_date desc
                               ) as rnk
             from Products
where change_date <= "2019-08-16")
select distinct p.product_id,
        ifnull(t.new_price, 10) as price
from Products p left outer join
(select * from cte where rnk=1) t
using (product_id)
;
# Solution 2: Union
select distinct product_id, 
       10 as price
from Products
group by product_id
having (min(change_date) > "2019-08-16")
union
select p2.product_id, 
       new_price
from Products p2
where (p2.product_id, p2.change_date) in (
           select product_id, 
                  max(change_date) as recent_date
           from Products
           where change_date <= "2019-08-16"
           group by product_id)
;
