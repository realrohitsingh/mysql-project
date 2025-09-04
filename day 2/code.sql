create database Class_task;
use class_task;
create table Address (
    pincode int Primary Key,
    area varchar(20),
    city varchar(15),
    state varchar(20)
);
insert into Address
values (5001, 'btm', 'bangaloer', 'karnataka'),
    (5002, 'gamharia', 'jamshedpur', 'jharkhand');
create table Person (
    P_id int Primary Key,
    name varchar(20),
    gender char(1),
    pin int,
    foreign key(pin) references Address(pincode)
);
insert into Person
values (1, 'Rohit', 'M', 5001),
    (2, 'Singh', 'M', 5001);
select *
from Address;
drop table Address;
create table bank_details (
    AccNumber int Primary Key,
    name varchar(20),
    IFSC_Code varchar(10) not null,
    branch varchar(20),
    TotalAmount decimal(10, 2)
);
drop table bank_details;
insert into bank_details
values (101, 'Rohit', 'SBIN00123', 'Jamshedpur', 500000.45),
    (102, 'Rishav', 'SBIN00123', 'Durgapur', 5000001.43),
    (103, 'Sayan', 'SBIN00123', 'Gamharia', 5000002.56);
select *
from bank_details;