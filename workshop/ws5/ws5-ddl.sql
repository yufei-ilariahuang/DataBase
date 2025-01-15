# WS5-1: Project and Employee
Drop table Project;
Drop table Employee;
Create table Project (
project_id int, 
employee_id int);
Create table Employee (
employee_id int, 
name varchar(10), 
experience_years int);
insert into Project (project_id, employee_id) values ('1', '1');
insert into Project (project_id, employee_id) values ('1', '2');
insert into Project (project_id, employee_id) values ('1', '3');
insert into Project (project_id, employee_id) values ('2', '1');
insert into Project (project_id, employee_id) values ('2', '4');
insert into Employee (employee_id, name, experience_years) values ('1', 'Khaled', '3');
insert into Employee (employee_id, name, experience_years) values ('2', 'Ali', '2');
insert into Employee (employee_id, name, experience_years) values ('3', 'John', '1');
insert into Employee (employee_id, name, experience_years) values ('4', 'Doe', '2');
# WS5-2 SalesPerson, Company and Orders
Drop table SalesPerson;
Drop table Company;
Drop table Orders;
Create table SalesPerson (
sales_id int, 
name varchar(255), 
salary int, 
commission_rate int, 
hire_date date);
Create table Company (
com_id int, 
name varchar(255), 
city varchar(255));
Create table Orders (
order_id int, 
order_date date, 
com_id int, 
sales_id int, 
amount int);
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('1', 'John', '100000', '6', '2006-04-01');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('2', 'Amy', '12000', '5', '2010-05-01');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('3', 'Mark', '65000', '12', '2008-12-25');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('4', 'Pam', '25000', '25', '2005-01-01');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('5', 'Alex', '5000', '10', '2007-02-03');
insert into Company (com_id, name, city) values ('1', 'RED', 'Boston');
insert into Company (com_id, name, city) values ('2', 'ORANGE', 'New York');
insert into Company (com_id, name, city) values ('3', 'YELLOW', 'Boston');
insert into Company (com_id, name, city) values ('4', 'GREEN', 'Austin');
insert into Orders (order_id, order_date, com_id, sales_id, amount) values ('1', '2014-01-01', '3', '4', '10000');
insert into Orders (order_id, order_date, com_id, sales_id, amount) values ('2', '2014-02-01', '4', '5', '5000');
insert into Orders (order_id, order_date, com_id, sales_id, amount) values ('3', '2014-03-01', '1', '1', '50000');
insert into Orders (order_id, order_date, com_id, sales_id, amount) values ('4', '2014-04-01', '1', '4', '25000');
# WS-5
Drop table Emp;
Drop table Dept;
Create table Emp (
emp_id int,
emp_name varchar(45), 
gender varchar(6), 
dept_id int);
Create table Dept (
dept_id int, 
dept_name varchar(255));
insert into Emp (emp_id, emp_name, gender, dept_id) values ('1', 'Jack', 'M', '1');
insert into Emp (emp_id, emp_name, gender, dept_id) values ('2', 'Jane', 'F', '1');
insert into Emp (emp_id, emp_name, gender, dept_id) values ('3', 'Mark', 'M', '2');
insert into Dept (dept_id, dept_name) values ('1', 'Engineering');
insert into Dept (dept_id, dept_name) values ('2', 'Science');
insert into Dept (dept_id, dept_name) values ('3', 'Law');
