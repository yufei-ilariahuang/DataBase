# WS1 : Activity
Drop table Activity;
Create table Activity (
player_id int, 
device_id int, 
event_date date, 
games_played int);
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-01', '5');
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-05-02', '6');
insert into Activity (player_id, device_id, event_date, games_played) values ('2', '3', '2017-06-25', '1');
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '1', '2016-03-02', '0');
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '4', '2018-07-03', '5');
# WS2 : Orders
Drop table Orders;
Create table orders (
order_number int, 
customer_number int);
insert into orders (order_number, customer_number) values ('1', '1');
insert into orders (order_number, customer_number) values ('2', '2');
insert into orders (order_number, customer_number) values ('3', '3');
insert into orders (order_number, customer_number) values ('4', '3');
# WS3 : Sales
Drop table Sales;
Create table Sales (employee_id int, product_id int, sales int);
insert into Sales (employee_id, product_id, sales) values ('2', '2', '95');
insert into Sales (employee_id, product_id, sales) values ('2', '3', '95');
insert into Sales (employee_id, product_id, sales) values ('1', '1', '90');
insert into Sales (employee_id, product_id, sales) values ('1', '2', '99');
insert into Sales (employee_id, product_id, sales) values ('3', '1', '80');
insert into Sales (employee_id, product_id, sales) values ('3', '2', '82');
insert into Sales (employee_id, product_id, sales) values ('3', '3', '82');

