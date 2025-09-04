create database Class_task2;
use class_task2;
create table emp (
    eid int primary key,
    ename varchar(15) not null,
    esal int,
    eage int
);
insert into emp
values (101, 'Chuha', 2000, 23);
select esal
from emp
where esal between 1250 and 3000;