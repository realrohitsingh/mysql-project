create database Class_task1;
use class_task1;

create table Director
(dir_id int primary key,
name varchar(20),
phno int,
email varchar(30));

insert into Director values
(101,'SS Rajamauli',1234567890,'rajamauli@gmail.com'),
(102,'Mohit Suri',0987654321,'mohitsuri@gmail.com');

create table Movie
(movie_id int primary key,
movie_name varchar(20),
release_date date,
dir_id1 int,
foreign key(dir_id1) references Director(dir_id));

insert into Movie values
(201,'Bahubali','2019-04-23',101),
(202,'KGF','2018-07-21',102);

create table Actor
(actor_id int primary key,
actor_name varchar(30),
actor_gender char(1),
actor_age int,
actor_phno int);

insert into Actor values
(301,'Prabhas','M',41,0987654321),
(302,'Yash','M',37,1234567890);

create table movie_cast
(movie_id int,
actor_id int,
foreign key(movie_id) references Movie(movie_id),
foreign key(actor_id) references Actor(actor_id));

insert into movie_cast values
(201,301),
(202,302);