create database mydb;
Use mydb;
create table customer1(
cust_ID int auto_increment not null,
cust_firstname varchar(225) not null,
cust_lastname varchar(225) not null,
cust_nickname varchar (20),
cus_age int, 
cus_gender char(10) not null,
cust_country varchar(225) not null, 
cust_salary dec not null, 
primary key (cust_ID)
);
alter table Customer1
add column bonus int not null;
alter table customer1
modify cust_age int not null;
alter table Customer1
drop cust_nickname;
alter table customer1
drop bonus;
use mydb

Insert into customer1(cust_ID, cust_firstname, cust_lastname, cus_age, cus_gender, 
cust_country, cust_salary)
values(111,"Nick", "jone", 26, "M", "usa", 20000),
(222, "Antony", "Martial", 24, "M", "France",10000),
(333, "Nebiha", "Amir", 24, "F", "Uzbekistan", 36000),
(444, "Soresa", "HaILU", 24, "M", "unknown", 34000),
(555, "Beka", "Haile", 25, "M", "kazakhstan", 40000),
(999, "Nike", "Jones", 26, "M", "USA", 20000),
(777, "poul", "pobg", 26, "M", "France", 20000),
(888, "Betty", "G", 27, "F", "Ethiopia", 70000);

















customer1 to customers;
drop table customers;
drop database mydb;
