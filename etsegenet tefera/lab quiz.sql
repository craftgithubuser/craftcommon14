SELECT * FROM mydb.customers;
create database MyDB;

use mydb;

create table customers(
Cust_ID int auto_increment not null,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null,
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(1) not null,
Cust_Country varchar(255) not null,
Cust_Salary dec not null,
primary key (Cust_ID)
);

alter table customers
add column bonus int not null;
 
alter table customers
modify Cust_Age int not null;

alter table customers
drop Cust_NickName;

alter table customers
drop bonus;

rename table 
customers to customer;

drop table customer;

drop database MyDB;

create database MyDB;

use mydb;

create table customers(
Cust_ID int auto_increment not null,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null,
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(1) not null,
Cust_Country varchar(255) not null,
Cust_Salary dec not null,
primary key (Cust_ID)
);

insert into customers (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Gender, Cust_Country, Cust_Salary)
values (111, "Nick", "Jones", "M", "USA", 20000000),
(222, "Antony", "Martial", "M", "France", 10000000),
(333, "Nebiha", "Amir", "F", "Uzbekistan",36000000),
(444, "Soresa", "Hailu", "M", "Unkown", 34000000),
(555, "Beka", "Haile", "M", "Kazakhstan", 400000),
(999, "Nick", "Jones", "M", "USA", 20000000),
(777, "Poul", "Pogba", "M", "France",20000000),
(888, "Betty", "G", "Ethiopia", 70000000);

update customers
set  Cust_Country="Ethiopia"
where Cust_ID in(333,444,555);

