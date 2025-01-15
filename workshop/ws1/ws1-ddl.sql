# WS1: Product
Drop table Products;
Create table Products (
product_id int, 
low_fats ENUM('Y', 'N'), 
recyclable ENUM('Y','N'));
insert into Products (product_id, low_fats, recyclable) values ('0', 'Y', 'N');
insert into Products (product_id, low_fats, recyclable) values ('1', 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('2', 'N', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('3', 'Y', 'Y');
insert into Products (product_id, low_fats, recyclable) values ('4', 'N', 'N');

# WS2: Customer
Drop table Customer;
Create table Customer (
id int, 
name varchar(25), 
referee_id int);
insert into Customer (id, name, referee_id) values ('1', 'Will', null);
insert into Customer (id, name, referee_id) values ('2', 'Jane', null);
insert into Customer (id, name, referee_id) values ('3', 'Alex', '2');
insert into Customer (id, name, referee_id) values ('4', 'Bill', null);
insert into Customer (id, name, referee_id) values ('5', 'Zack', '1');
insert into Customer (id, name, referee_id) values ('6', 'Mark', '2');

# WS3: Students
Drop table Students;
Create table Students (
student_id int, 
student_name  varchar(30), 
major varchar(100));
insert into Students (student_id, student_name, major) values ('1', 'Daniel', 'MSCS');
insert into Students (student_id, student_name, major) values ('2', 'Alice', '');
insert into Students (student_id, student_name, major) values ('3', 'Bob', 'BSCS');
insert into Students (student_id, student_name, major) values ('4', 'George', 'MSEE-CE');
insert into Students (student_id, student_name, major) values ('5', 'Alain', 'MSCS');

