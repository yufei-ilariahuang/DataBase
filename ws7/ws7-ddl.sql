# WS7-1: Products
Drop table Products;
Create table Products (
product_id int, 
new_price int, 
change_date date)
;
insert into Products (product_id, new_price, change_date) values ('1', '20', '2019-08-14');
insert into Products (product_id, new_price, change_date) values ('2', '50', '2019-08-14');
insert into Products (product_id, new_price, change_date) values ('1', '30', '2019-08-15');
insert into Products (product_id, new_price, change_date) values ('1', '35', '2019-08-16');
insert into Products (product_id, new_price, change_date) values ('2', '65', '2019-08-17');
insert into Products (product_id, new_price, change_date) values ('3', '20', '2019-08-18');
# WS7-2: Product and Sales
Drop table Product;
Drop table Sales;
Create table Product (product_id int, product_name varchar(10), unit_price int);
Create table Sales (seller_id int, product_id int, buyer_id int, sale_date date, quantity int, price int);
insert into Product (product_id, product_name, unit_price) values ('1', 'S8', '1000');
insert into Product (product_id, product_name, unit_price) values ('2', 'G4', '800');
insert into Product (product_id, product_name, unit_price) values ('3', 'iPhone', '1400');
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('1', '1', '1', '2019-01-21', '2', '2000');
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('1', '2', '2', '2019-02-17', '1', '800');
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('2', '2', '3', '2019-06-02', '1', '800');
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('3', '3', '4', '2019-05-13', '2', '2800');
# WS7-3:
Drop table Class;
Drop table Student;
Create table Class (class_id int, student_id int);
Create table Student (student_id int, name varchar(10), experience_years int);
insert into Class (class_id, student_id) values ('1', '1');
insert into Class (class_id, student_id) values ('1', '2');
insert into Class (class_id, student_id) values ('1', '3');
insert into Class (class_id, student_id) values ('2', '1');
insert into Class (class_id, student_id) values ('2', '4');
insert into Student (student_id, name, experience_years) values ('1', 'Khaled', '3');
insert into Student (student_id, name, experience_years) values ('2', 'Ali', '2');
insert into Student (student_id, name, experience_years) values ('3', 'John', '1');
insert into Student (student_id, name, experience_years) values ('4', 'Doe', '2');
