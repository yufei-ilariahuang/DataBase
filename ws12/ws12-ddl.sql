# For WS12-1
Drop table Products;
Drop table Customers;
Drop table Orders;
Create table Products (product_id int, product_name varchar(20), price int);
Create table Customers (customer_id int, name varchar(100));
Create table Orders (order_id int, order_date date, customer_id int, product_id int);
insert into Customers (customer_id, name) values ('1', 'Winston');
insert into Customers (customer_id, name) values ('2', 'Jonathan');
insert into Customers (customer_id, name) values ('3', 'Annabelle');
insert into Customers (customer_id, name) values ('4', 'Marwan');
insert into Customers (customer_id, name) values ('5', 'Khaled');
insert into Orders (order_id, order_date, customer_id, product_id) values ('1', '2020-07-31', '1', '1');
insert into Orders (order_id, order_date, customer_id, product_id) values ('2', '2020-7-30', '2', '2');
insert into Orders (order_id, order_date, customer_id, product_id) values ('3', '2020-08-29', '3', '3');
insert into Orders (order_id, order_date, customer_id, product_id) values ('4', '2020-07-29', '4', '1');
insert into Orders (order_id, order_date, customer_id, product_id) values ('5', '2020-06-10', '1', '2');
insert into Orders (order_id, order_date, customer_id, product_id) values ('6', '2020-08-01', '2', '1');
insert into Orders (order_id, order_date, customer_id, product_id) values ('7', '2020-08-01', '3', '1');
insert into Orders (order_id, order_date, customer_id, product_id) values ('8', '2020-08-03', '1', '2');
insert into Orders (order_id, order_date, customer_id, product_id) values ('9', '2020-08-07', '2', '3');
insert into Orders (order_id, order_date, customer_id, product_id) values ('10', '2020-07-15', '1', '2');
insert into Products (product_id, product_name, price) values ('1', 'keyboard', '120');
insert into Products (product_id, product_name, price) values ('2', 'mouse', '80');
insert into Products (product_id, product_name, price) values ('3', 'screen', '600');
insert into Products (product_id, product_name, price) values ('4', 'hard disk', '450');
# WS12-2 for log
Drop table logs;
Create table Logs (log_id int);
insert into Logs (log_id) values ('1');
insert into Logs (log_id) values ('2');
insert into Logs (log_id) values ('3');
insert into Logs (log_id) values ('7');
insert into Logs (log_id) values ('8');
insert into Logs (log_id) values ('10');
# WS12-3 for Points
Drop table Points;
Create table Points (id int, point DECIMAL(3,2));
insert into Points (id, point) values ('1', '3.5');
insert into Points (id, point) values ('2', '3.65');
insert into Points (id, point) values ('3', '4.0');
insert into Points (id, point) values ('4', '3.85');
insert into Points (id, point) values ('5', '4.0');
insert into Points (id, point) values ('6', '3.65');