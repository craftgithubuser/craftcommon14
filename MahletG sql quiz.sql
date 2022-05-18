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

insert into customers (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age,  Cust_Gender, Cust_Country, Cust_Salary)
values (111, "Nick", "Jones", 26, "M", "USA", 20000000),
(222, "Antony", "Martial", 24, "M", "France", 10000000),
(333, "Nebiha", "Amir", 24, "F", "Uzbekistan",36000000),
(444, "Soresa", "Hailu", 24, "M", "Unkown", 34000000),
(555, "Beka", "Haile", 25, "M", "Kazakhstan", 400000),
(666, "Nick", "Jones", 26, "M", "USA", 20000000),
(777, "Poul", "Pogba", 26, "M", "France",20000000),
(888, "Betty", "G", 27, "F", "Ethiopia", 70000000); 

update customers
set  Cust_Country="Ethiopia"
where Cust_ID in
(333,444,555); 

delete from Customers
where Cust_ID= 666; 

select * from mydb.Customers;

select * from Customers 
where Cust_Country = "Ethiopia"; 

select * from Customers 
where  Cust_Salary >"5000000";

select  Cust_FirstName, Cust_LastName, Cust_Country from Customers
where Cust_Gender = "M"; 

select distinct Cust_Country from Customers;
 
select  Cust_FirstName, Cust_LastName, Cust_Country from Customers
where Cust_Gender = "F"
order by Cust_Country desc; 

select * from Customers 
where Cust_Gender = "F" and Cust_Salary >"2000000" and 
Cust_Country = "Ethiopia" 

select * from Customers
where Cust_Country = "Ethiopia" or  Cust_Country = "Uzbekistan";

select min(Cust_Salary) from Customers; 

select max(Cust_Salary) from Customers; 

select count(Cust_ID) from Customers;
select count(*) as no_customer from Customers; 

select avg(Cust_Salary) from Customers; 

select sum(Cust_Salary) from Customers; 

select * from Customers
where Cust_Salary between 2000000 and 8000000; 

select * from Customers
where Cust_FirstName like 's%'; 

select * from Customers
where Cust_FirstName like '_e%' 
and  Cust_LastName like '%e';

select * from Customers
where Cust_LastName like 'p%a'; 

select * from Customers
where Cust_Country in
( "Ethiopia", "USA", "France"); 

use mydb; 

create table Address(
Cust_Zip varchar(255) not null,
Cust_Street varchar(255) not null,
Cust_City varchar(255) not null,
Cust_state varchar(255),
Customer_ID int ,
primary key (Cust_Zip),
foreign key (Customer_ID) references customers (cust_id)
); 

insert into Address (Cust_Zip, Cust_Street,Cust_City, Cust_state, Customer_ID)
values (1000, 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
(2000, '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
(3000, '41-eyesus', 'Addis Ababa', 'Addis Ababa', 888),
(4000, '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
(5000, '01-st', 'San Diego', 'California', null),
(6000, 'kU-road', 'Los Angeles', 'California', null),
(7000, 'JK-road', 'Miami', 'Florida', null),
(8000, 'Lj-road', 'Atlanta', 'Georgia', null); 

select *
from customers c inner join Address A
on c.cust_id= A.Customer_ID;

select *
from customers c left join Address A
on c.cust_id= A.Customer_ID;

select *
from customers c right join Address A
on c.cust_id= A.Customer_ID; 

select *
from customers c right join Address A
on c.cust_id= A.Customer_ID
union
select *
from customers c left join Address A
on c.cust_id= A.Customer_ID; 




