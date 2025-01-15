# WS10-1 for Employee
Drop table Employees;
Create table Employees (
employee_id int, 
name varchar(30), 
salary int)
;
insert into Employees (employee_id, name, salary) values ('2', 'Meir', '3000');
insert into Employees (employee_id, name, salary) values ('3', 'Michael', '3800');
insert into Employees (employee_id, name, salary) values ('7', 'Addilyn', '7400');
insert into Employees (employee_id, name, salary) values ('8', 'Juan', '6100');
# WS10-2 for Teams and Matches
Drop table Teams;
Drop table Matches;
Create table Teams (
team_id int, 
team_name varchar(30));
Create table Matches (
match_id int, 
host_team int, 
guest_team int, 
host_goals int, 
guest_goals int);
insert into Teams (team_id, team_name) values ('10', 'Leetcode FC');
insert into Teams (team_id, team_name) values ('20', 'NewYork FC');
insert into Teams (team_id, team_name) values ('30', 'Atlanta FC');
insert into Teams (team_id, team_name) values ('40', 'Chicago FC');
insert into Teams (team_id, team_name) values ('50', 'Toronto FC');
insert into Matches (match_id, host_team, guest_team, host_goals, guest_goals) values ('1', '10', '20', '3', '0');
insert into Matches (match_id, host_team, guest_team, host_goals, guest_goals) values ('2', '30', '10', '2', '2');
insert into Matches (match_id, host_team, guest_team, host_goals, guest_goals) values ('3', '10', '50', '5', '1');
insert into Matches (match_id, host_team, guest_team, host_goals, guest_goals) values ('4', '20', '30', '1', '0');
insert into Matches (match_id, host_team, guest_team, host_goals, guest_goals) values ('5', '50', '30', '1', '0');
# WS10-3 for
Drop table Payment;
Drop table Intern;
Create table Payment (
id int, 
intern_id int, 
amount int, 
pay_date date);
Create table Intern (
intern_id int, 
department_id int);
insert into Payment (id, intern_id, amount, pay_date) values ('1', '1', '9000', '2017-03-31');
insert into Payment (id, intern_id, amount, pay_date) values ('2', '2', '6000', '2017-03-31');
insert into Payment (id, intern_id, amount, pay_date) values ('3', '3', '10000', '2017-03-31');
insert into Payment (id, intern_id, amount, pay_date) values ('4', '1', '7000', '2017-02-28');
insert into Payment (id, intern_id, amount, pay_date) values ('5', '2', '6000', '2017-02-28');
insert into Payment (id, intern_id, amount, pay_date) values ('6', '3', '8000', '2017-02-28');
insert into Intern (intern_id, department_id) values ('1', '1');
insert into Intern (intern_id, department_id) values ('2', '2');
insert into Intern (intern_id, department_id) values ('3', '2');

