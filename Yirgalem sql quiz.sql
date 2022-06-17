create schema MYDB;

use myDB;

create table customers(
cust_ID int(255) primary key not null,
cust_FirstName varchar(25) not null,
Cust_LastName varchar(25) not null,
cust_NickName varchar(25),
cust_age int,
cust_Gender char(5) not null,
cust_Country varchar(255) not null,
cust_Salary dec(15) not null
);

alter table customers 
add bonus int(15) not null;

alter table customers
modify cust_age int(4) not null;

alter table customers
drop bonus;

alter table customers rename to Customer_Table;

drop table customer_table;

drop schema mydb;

drop schema mydb;

create schema MyDB;

use mydb;

create table customers(
cust_ID int(255) primary key not null,
cust_FirstName varchar(25) not null,
cust_LastName varchar(25) not null,
cust_Age int(4),
cust_Gender char(6) not null,
cust_Country varchar(255) not null,
cust_Salary dec(12)
);

insert into customers(cust_ID, cust_FirstName, cust_LastName, cust_Age, cust_Gender, cust_Country, cust_Salary)
values(111, "Nick", "jones", null, "M", "USA", 20000000),(222, "Antony", "Martial", null, "M", "France",10000000),
(333,"Nebiha", "Amir", null, "F", "Uzbekistan", 36000000),(444, "Soresa)", "Hailu", null, "M", "unknown",34000000),
(555, "Beka", "Hailu", null, "M", "Kazakhstan", 400000),(666, "Nick", "Jones", null, "M", "USA", 20000000),
(777, "Poul", "Pogba", null, "M", "France", 20000000), (888, "Betty", "G", null, "F", "Ethiopia", 70000000);

use mydb;

update customers set cust_country="Ethiopia" where cust_ID in(333,444,555);

delete from customers where cust_ID=666;

select * from mydb.customers;

select * from customers where cust_Country="Ethiopia";

select * from customers where cust_Salary>5000000;

select cust_FirstName, cust_lastName, cust_country from customers where cust_Gender="M";

select distinct cust_Country from customers;

select cust_FirstName, cust_LastName, cust_Country from customers where cust_Gender="F" order by cust_country desc;

select * from customers where cust_Gender="F" and cust_salary>2000000 and cust_country="Ethiopia";

select * from customers where cust_Country="Ethiopia" or cust_Country="uzbekistan";

select min(cust_Salary) from customers;

select max(cust_Salary) from customers;

select count(*) from customers;

select avg(cust_Salary) from customers;

select sum(cust_Salary) from customers;

select  cust_Salary from customers where cust_Salary between 2000000 and  8000000;

select * from customers where cust_FirstName like 'S%';

select * from customers where cust_lastName like 'P%a';

select *  from customers where cust_Country="Ethiopia" or cust_country="USA" or cust_Country="France";



