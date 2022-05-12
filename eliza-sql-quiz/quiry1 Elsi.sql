create database MYDB;
use MYDB;

create table customers(
Cust_ID int auto_increment not null,
Cust_Firstname varchar(255) not null,
Cust_Lastname varchar(255) not null,
Cust_Nickname varchar (255) not null,
Cust_Age int,
Cust_Gender Char(5) not null,
Cust_Country Varchar (255),
Cust_Salary dec not null,
Primary Key (cust_ID)
);


alter table customers
add column bonus int not null;
 
alter table customers
modify Cust_Age int not null;

Alter table customers
drop Cust_Nickname;

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
Cust_Country varchar(255) not null
);
insert into customers(Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary)
values (111, "Nick", "Jones", 26, "M", "USA", 20000000),
(222, "Antony", "Martial", 24, "M", "France", 10000000),
(333, "Nebiha", "Amir", 24, "F", "Uzbekistan",36000000),
(444, "Soresa", "Hailu", 24, "M", "Unkown", 34000000),
(555, "Beka", "Haile", 25, "M", "Kazakhstan", 400000),
(999, "Nick", "Jones", 26, "M", "USA", 20000000),
(777, "Poul", "Pogba", 26, "M", "France",20000000),
(888, "Betty", "G", 27, "F", "Ethiopia", 70000000);


      

update customers
set Cust_Country="Ethiopia"
where Cust_ID in 
(333,444,555);


delete from Customers
where Cust_ID= 666;

              