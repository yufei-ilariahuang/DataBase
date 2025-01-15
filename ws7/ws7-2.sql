with cte as (
    select
        seller_id,
        dense_rank() over (
            order by sum(price) desc
        ) as rk
    from sales
    group by seller_id 
)

select seller_id from cte where rk = 1;
