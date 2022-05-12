
create database MyDB3;

use mydb3;

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

insert into customer (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age,  Cust_Gender, Cust_Country, Cust_Salary)
values (111, "Nick", "Jones", 26, "M", "USA", 20000000),
(222, "Antony", "Martial", 24, "M", "France", 10000000),
(333, "Nebiha", "Amir", 24, "F", "Uzbekistan",36000000),
(444, "Soresa", "Hailu", 24, "M", "Unkown", 34000000),
(555, "Beka", "Haile", 25, "M", "Kazakhstan", 400000),
(999, "Nick", "Jones", 26, "M", "USA", 20000000),
(777, "Poul", "Pogba", 26, "M", "France",20000000),
(888, "Betty", "G", 27, "F", "Ethiopia", 70000000);

update customers
set  Cust_Country="Ethiopia"
where Cust_ID in
(333,444,555);

delete from Customers
where Cust_ID= 666;

 select * from mydb.Customers; 

select * from Customers 
where  = "Ethiopia";

where Cust_Salary >"5000000";

select  Cust_FirstName, Cust_LastName, Cust_Country from Customers
where Cust_Gender = "M";

 select distinct from Customers;

select  Cust_FirstName, Cust_LastName, Cust_Country from Customers
where Cust_Gender = 'F"
order by Cust_Country desc;
 
 select * from Customers 
  where Cust_Gender = "F" and Cust_country = "Ethiopia" and Cust_Salary >2000000;

 select* from Customers
 where Cust_Country = "Ethiopia" or  Cust_Country = "Uzbekistan"

  select min(Cust_Salary) from Customers;
 
 10. select max(Cust_Salary) from Customers;
 
 11. select count(Cust_ID) from Customers;
 select count(*) as no_customer from Customers;
 
12.  select avg(Cust_Salary) from Customers;

13. select sum(Cust_Salary) from Customers;

14.  select * from Customers
where Cust_Salary between 2000000 and 8000000;

15. select * from Customers
where Cust_FirstName like 's%';

16. select * from Customers
where Cust_FirstName like '_e%' 
and  Cust_LastName like '%e';

17. select * from Customers
where Cust_LastName like 'p%a';

18. select * from Customers
where Cust_Country in
( "Ethiopia", "USA", "France");





