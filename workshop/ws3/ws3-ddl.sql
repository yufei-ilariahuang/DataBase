# For ws3-1: ActorDirector
Drop table ActorDirector;
Create table ActorDirector (
actor_id int, 
director_id int, 
timestamp int);
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '0');
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '1');
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '2');
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '3');
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '4');
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '5');
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '6');

# For ws3-2: 
Drop table Views;
Create table Views (
article_id int, 
author_id int, 
viewer_id int, 
view_date date)
;
insert into Views (article_id, author_id, viewer_id, view_date) values ('1', '3', '5', '2019-08-01');
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '5', '2019-08-01');
insert into Views (article_id, author_id, viewer_id, view_date) values ('1', '3', '6', '2019-08-02');
insert into Views (article_id, author_id, viewer_id, view_date) values ('2', '7', '7', '2019-08-01');
insert into Views (article_id, author_id, viewer_id, view_date) values ('2', '7', '6', '2019-08-02');
insert into Views (article_id, author_id, viewer_id, view_date) values ('4', '7', '1', '2019-07-22');
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21');
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21');
# ws3-3
Drop table Student;
Drop table Professor;
Create table Student (
student_id int, 
professor_key int);
Create table Professor (
professor_key int
);
insert into Student (student_id, professor_key) values ('1', '5');
insert into Student (student_id, professor_key) values ('2', '6');
insert into Student (student_id, professor_key) values ('3', '5');
insert into Student (student_id, professor_key) values ('3', '6');
insert into Student (student_id, professor_key) values ('1', '6');
insert into Professor (professor_key) values ('5');
insert into Professor (professor_key) values ('6');
