# WS11-1 for Transactions and Chargebacks
Drop table Transactions;
Drop table Chargebacks;;
Create table Transactions (
id int, 
country varchar(4), 
state enum('approved', 'declined'), 
amount int, 
trans_date date)
;
Create table Chargebacks (
trans_id int, 
trans_date date)
;
insert into Transactions (id, country, state, amount, trans_date) values ('101', 'US', 'approved', '1000', '2019-05-18');
insert into Transactions (id, country, state, amount, trans_date) values ('102', 'US', 'declined', '2000', '2019-05-19');
insert into Transactions (id, country, state, amount, trans_date) values ('103', 'US', 'approved', '3000', '2019-06-10');
insert into Transactions (id, country, state, amount, trans_date) values ('104', 'US', 'declined', '4000', '2019-06-13');
insert into Transactions (id, country, state, amount, trans_date) values ('105', 'US', 'approved', '5000', '2019-06-15');
insert into Chargebacks (trans_id, trans_date) values ('102', '2019-05-29');
insert into Chargebacks (trans_id, trans_date) values ('101', '2019-06-30');
insert into Chargebacks (trans_id, trans_date) values ('105', '2019-09-18');
# WS-2 for Tree
Drop table Tree;
Create table Tree (
id int, 
p_id int);
insert into Tree (id, p_id) values ('1', Null);
insert into Tree (id, p_id) values ('2', '1');
insert into Tree (id, p_id) values ('3', '1');
insert into Tree (id, p_id) values ('4', '2');
insert into Tree (id, p_id) values ('5', '2');
# WS-3 for Cloudy and Clear
Drop table Cloudy;
Drop table Clear;
Create table Cloudy (cloudy_date date);
Create table Clear (clear_date date);
insert into Cloudy (cloudy_date) values ('2018-12-28');
insert into Cloudy (cloudy_date) values ('2018-12-29');
insert into Cloudy (cloudy_date) values ('2019-01-04');
insert into Cloudy (cloudy_date) values ('2019-01-05');
insert into Clear (clear_date) values ('2018-12-30');
insert into Clear (clear_date) values ('2018-12-31');
insert into Clear (clear_date) values ('2019-01-01');
insert into Clear (clear_date) values ('2019-01-02');
insert into Clear (clear_date) values ('2019-01-03');
insert into Clear (clear_date) values ('2019-01-06');

