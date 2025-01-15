# Solution 1 using CASE
select employee_id, 
case 
    when employee_id%2 != 0 
         and name NOT LIKE 'M%' 
    then salary
    else 0
end as bonus
from employees 
order by employee_id
;
# Solution 2 using IF
select employee_id, 
       if(employee_id%2 != 0 
          and name NOT LIKE 'M%', salary, 0) as bonus
from employees 
order by employee_id
;

