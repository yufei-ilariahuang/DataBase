# Solution 1: using Subquery
SELECT DISTINCT page_id AS recommended_page
FROM Likes
WHERE user_id IN (
    SELECT user2_id AS friend_id FROM Friendship WHERE user1_id = 1
    UNION
    SELECT user1_id AS friend_id FROM Friendship WHERE user2_id = 1) 
AND
    page_id NOT IN (
      SELECT page_id FROM Likes WHERE user_id = 1
    )
;
# Solution 2: using WITH
with c as(    
    select distinct user2_id user_id
    from(
        select * from Friendship
        union
        select user2_id, user1_id from Friendship)t
    where user1_id=1)

select distinct page_id recommended_page
from c 
join likes using(user_id)
where page_id not in (select page_id from Likes where user_id=1)
;
