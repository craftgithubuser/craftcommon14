create schema MyDB;

use MyDB;

create table customers(
Cust_ID int auto_increment  not null,
Cust_FirstName varchar(255) not null,
Cust_LastName varchar(255) not null,
Cust_NickName varchar(255),
Cust_Age int,
Cust_Gender char(100) not null,
Cust_country varchar(255),
Cust_Salary decimal not null,
primary key (Cust_ID)
 
);
alter table customers
add column Bonus int not null;

alter table customers
modify Cust_Age int not null;

alter table customers
drop Cust_NickName;

alter table customers
drop Bonus;

rename table
customers to customer

drop table customer;

drop database mydb;

insert into customers(Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age, Cust_Gender, Cust_country, Cust_Salary)
values(111, "Nick", "Jones", 26, "M", "USA", 20000),
(222, "Antony", "Martial", 24, "M", "France", 10000),
(333, "Nebiha", "Amir", 24, "F", "Uzbekistan", 36000),
(444, "Soresa", "Hailu", 24, "M","Unknown", 34000),
(555, "Beka", "Hailu", 25, "M", "Kazakhstan", 40000),
(999, "Nick", "Jones", 26, "M","USA", 20000),
(777, "Poul","Pogba", 26, "M", "France", 20000),
(888, "Betty","G", 27, "F", "Ethiopia",70000);

update customers 
set  Cust_country= "Ethiopia"
where Cust_ID = 333;

update customers 
set  Cust_country= "Ethiopia"
where Cust_ID = 444;

update customers 
set  Cust_country= "Ethiopia"
where Cust_ID = 555;

delete from customers
where Cust_ID = 999;

select * from mydb.customers;


select * from customers
where Cust_country = "Ethiopia";


select * from customers
where Cust_Salary > 50000;

Select Cust_FirstName, Cust_LastName,Cust_country from customers
Where Cust_Gender = "M";

Select Cust_country from Customers;

Select Cust_FirstName, Cust_LastName from customers
Where Cust_Gender ="F" order by Cust_country desc;

Select Cust_FirstName, Cust_LastName from customers
Where Cust_Gender ="M" order by Cust_country asc;

select * from Customers 
 order by Cust_LastName asc;
 select * from Customers 
 order by Cust_Age asc;
 

select * from Customers
where Cust_Gender ="F" and Cust_Salary > 20000 and  Cust_country = "Ethiopia";

select * from Customers
Where Cust_country= "Ethiopia" or "Uzbekistan";

select * from Customers
Where Cust_country= "Ethiopia" or Cust_country= "Uzbekistan";

select * from Customers
Where Cust_country= "Ethiopia" And Cust_country= "Uzbekistan";

select * from Customers
Where Cust_country= "Uzbekistan" or Cust_country= "Ethiopia";

select * from Customers
where min(Cust_Salary);

select min(Cust_Salary)  from Customers
where Cust_country= "Ethiopia";

select min(Cust_Salary);

select min(Cust_Salary)from Customers;

Select max(Cust_Salary) from Customers;

select count(Cust_ID) from Customers;

select count(*) as No_Customer from Customers;
select avg(Cust_Salary) from Customers;
select sum(Cust_Salary) from Customers;
select * from Customers
where Cust_Salary between 20000 and 80000;
select * from customers
where Cust_FirstName like 's%';
select * from Customers
where Cust_FirstName like '_e' and Cust_LastName like '%e';
select * from customers
where Cust_LastName like 'P%A';
select * from Customers
where Cust_country = "Ethiopia" and "USA" and "France";
select * from Customers
where Cust_country in ("Ethiopia" and "USA" and "France");
