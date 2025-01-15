select business_id
  from (
        -- First, take the average of 'occurences' group by 'event_type'
        select event_type, 
               avg(occurences) as ave_occurences   
          from events as e1
        group by event_type
       ) as temp1
       -- Second, join Events table on 'event_type'
       join events as e2 
         on temp1.event_type = e2.event_type   
-- Third, the 'occurences' should be greater than the average of 'occurences'
where e2.occurences > temp1.ave_occurences
group by business_id
-- (More than one event type with 'occurences' greater than 1)
having count(distinct temp1.event_type) > 1
;
