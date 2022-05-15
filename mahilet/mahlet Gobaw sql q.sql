create database MYDB2;

use MYDB2;

create table Customers(
cust_ID int auto_increment not null,
cust_firstName varchar (255) not null,
cust_lastName varchar(255) not null,
cust_nickName varchar(255),
cust_Age int,
cust_gender char(5) not null,
cust_country varchar (255) not null,
cust_salary dec not null,
primary key (cust_ID)
);
 
alter table customers
add column bonus int not null;

alter table customers 
modify cust_Age int not null;

alter table customers 
drop cust_nickName;

alter table customers
drop bonus;

rename table 
customers to customer;

drop table customer;

drop database MYDB2;

create database MYDB2;

use MYDB2;


create table Customers(
cust_ID int auto_increment not null,
cust_firstName varchar (255) not null,
cust_lastName varchar(255) not null,
cust_nickName varchar(255),
cust_Age int,
cust_gender char(5) not null,
cust_country varchar (255) not null,
cust_salary dec not null,
primary key (cust_ID)
);
 
 
Insert  into  Customers ( cust_ID, Cust_FirstName, Cust_LastName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary)

values(111, "Nick", "Jones",  23, "M", "USA", 2000000),
(222, "Anthony","Martial",  30,"M", "France", 100000),
(333, "Nabiha", "Amir", 35, "F","Uzberkistan",360000),
(444, "Soresa","Haile",  36, "F","Unkonwn", 3400000),
(555, "Beka", "Hailu",  40, "M", "Kazakhstan", 40000),
(666, "Nick", "Jones",  40, "M", "USA", 200000),
(777, "Poul", "Pogba", 26, "M","France", 20000000),
(888, "Betty","G", 27,  "F", "Ethiopia", 70000000);

update customers
set cust_country = "Ethiopia"
Where Cust_ID in (333, 444, 555);


delete from customers 
where cust_ID = 666;


 


