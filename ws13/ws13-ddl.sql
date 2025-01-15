# WS13-1 for Customers
Drop table Customers;
Create table Customers (
customer_id int, 
customer_name varchar(20));
insert into Customers (customer_id, customer_name) values ('1', 'Alice');
insert into Customers (customer_id, customer_name) values ('4', 'Bob');
insert into Customers (customer_id, customer_name) values ('5', 'Charlie');
# WS13-2 for Student and Exam
Drop table Student;
Drop table Exam;
Create table Student (
student_id int, 
student_name varchar(30));
Create table Exam (
exam_id int, 
student_id int, 
score int);
insert into Student (student_id, student_name) values ('1', 'Daniel');
insert into Student (student_id, student_name) values ('2', 'Jade');
insert into Student (student_id, student_name) values ('3', 'Stella');
insert into Student (student_id, student_name) values ('4', 'Jonathan');
insert into Student (student_id, student_name) values ('5', 'Will');
insert into Exam (exam_id, student_id, score) values ('10', '1', '70');
insert into Exam (exam_id, student_id, score) values ('10', '2', '80');
insert into Exam (exam_id, student_id, score) values ('10', '3', '90');
insert into Exam (exam_id, student_id, score) values ('20', '1', '80');
insert into Exam (exam_id, student_id, score) values ('30', '1', '70');
insert into Exam (exam_id, student_id, score) values ('30', '3', '80');
insert into Exam (exam_id, student_id, score) values ('30', '4', '90');
insert into Exam (exam_id, student_id, score) values ('40', '1', '60');
insert into Exam (exam_id, student_id, score) values ('40', '2', '70');
insert into Exam (exam_id, student_id, score) values ('40', '4', '80');
# WS13-3 for Items and Sales
Drop table Items;
Drop table Sales;
Create table Items (
item_id int, 
item_name varchar(30))
;
Create table Sales (
item_id int, 
period_start date, 
period_end date, 
average_daily_sales int)
;
insert into Items (item_id, item_name) values ('1', 'LC Phone ');
insert into Items (item_id, item_name) values ('2', 'LC T-Shirt');
insert into Items (item_id, item_name) values ('3', 'LC Keychain');
insert into Sales (item_id, period_start, period_end, average_daily_sales) values ('1', '2019-01-25', '2019-02-28', '100');
insert into Sales (item_id, period_start, period_end, average_daily_sales) values ('2', '2018-12-01', '2020-01-01', '10');
insert into Sales (item_id, period_start, period_end, average_daily_sales) values ('3', '2019-12-01', '2020-01-31', '1');
