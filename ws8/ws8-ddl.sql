# WS8-1: Players and Matches
Drop table Players;
Drop table Matches;
Create table Players (
player_id int, 
group_id int);
Create table Matches (
match_id int, 
first_player int, 
second_player int, 
first_score int, 
second_score int);
insert into Players (player_id, group_id) values ('10', '2');
insert into Players (player_id, group_id) values ('15', '1');
insert into Players (player_id, group_id) values ('20', '3');
insert into Players (player_id, group_id) values ('25', '1');
insert into Players (player_id, group_id) values ('30', '1');
insert into Players (player_id, group_id) values ('35', '2');
insert into Players (player_id, group_id) values ('40', '3');
insert into Players (player_id, group_id) values ('45', '1');
insert into Players (player_id, group_id) values ('50', '2');
insert into Matches (match_id, first_player, second_player, first_score, second_score) values ('1', '15', '45', '3', '0');
insert into Matches (match_id, first_player, second_player, first_score, second_score) values ('2', '30', '25', '1', '2');
insert into Matches (match_id, first_player, second_player, first_score, second_score) values ('3', '30', '15', '2', '0');
insert into Matches (match_id, first_player, second_player, first_score, second_score) values ('4', '40', '20', '5', '2');
insert into Matches (match_id, first_player, second_player, first_score, second_score) values ('5', '35', '50', '1', '1');
# WS-2 Events
Drop table Events;
Create table Events (
business_id int, 
event_type varchar(10), 
occurences int)
;
insert into Events (business_id, event_type, occurences) values ('1', 'reviews', '7');
insert into Events (business_id, event_type, occurences) values ('3', 'reviews', '3');
insert into Events (business_id, event_type, occurences) values ('1', 'ads', '11');
insert into Events (business_id, event_type, occurences) values ('2', 'ads', '7');
insert into Events (business_id, event_type, occurences) values ('3', 'ads', '6');
insert into Events (business_id, event_type, occurences) values ('1', 'page views', '3');
insert into Events (business_id, event_type, occurences) values ('2', 'page views', '12');
# WS-3 
Drop table Interns;
Create table Interns (
id int, 
name varchar(255), 
department varchar(255), 
mentorId int);
insert into Interns (id, name, department, mentorId) values ('101', 'John', 'A', Null);
insert into Interns (id, name, department, mentorId) values ('102', 'Dan', 'A', '101');
insert into Interns (id, name, department, mentorId) values ('103', 'James', 'A', '101');
insert into Interns (id, name, department, mentorId) values ('104', 'Amy', 'A', '101');
insert into Interns (id, name, department, mentorId) values ('105', 'Anne', 'A', '101');
insert into Interns (id, name, department, mentorId) values ('106', 'Ron', 'B', '101');

