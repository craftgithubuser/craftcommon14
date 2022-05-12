create schema MyDB;

use MyDB;

create table customers(
Cust_ID int auto_increment not null,
Cust_FirstName VARCHAR(255) not null,
Cust_LastName VARCHAR(255) not null,
Cust_NickName VARCHAR(255),      
Cust_Age int,
Cust_Gender CHAR(50) not null,
Cust_Country VARCHAR(255) not null,
Cust_Salary dec not null,
Primary key (Cust_ID)
);

alter table customers
add column bonus int not null;

alter table customers
modify column Cust_Age int not null;

alter table customers
drop column Cust_NickName;

alter table customers
drop column bonus;

rename table customers to Customer;

drop table Customer;

drop schema MyDB;


create schema MyDB;

use MyDB;

create table customers(
Cust_ID int auto_increment not null,
Cust_FirstName VARCHAR(255) not null,
Cust_LastName VARCHAR(255) not null,
Cust_NickName VARCHAR(255),      
Cust_Age int,
Cust_Gender CHAR(50) not null,
Cust_Country VARCHAR(255) not null,
Cust_Salary dec not null,
Primary key (Cust_ID)
);

insert into customers (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary)
values (111, 'Nick', 'Jones', null, 'M', 'USA', 20000000),
(222, 'Antony', 'Martial', null, 'M', 'France', 10000000),
(333, 'Nebiha', 'Amir', null, 'F', 'Uzbekistan', 36000000),
(444, 'Soresa', 'Hailu', null, 'M', 'Unknown', 34000000),
(555, 'Beka', 'Haile', null, 'M', 'Kazakhstan', 400000),
(666, 'Nick', 'Jones', null, 'M', 'USA', 20000000),
(777, 'Poul', 'Pogba', null, 'M', 'France', 20000000),
(888, 'Betty', 'G', null, 'F', 'USA', 70000000);

update customers                             
set Cust_Country = 'Ethiopian'              
where Cust_ID in (333, 444, 555); 

delete from customers
where Cust_ID = 666;

/*
1. select * from MyDB.Customers;

2. select * from Customers
   where Cust_Country = 'Ethiopian';
   
3. select * from Customers
   where Cust_Salary > '5000000';

4. select Cust_FirstName, Cust_LastName, Cust_Country from Customers
   where Cust_Gender = 'M';

5. select distinct Cust_Salary from Customers;

6. select Cust_FirstName, Cust_LastName, Cust_Country from Customers
   where Cust_Gender = 'F'
   order by Cust_Country desc;
   
7. select * from Customers
   where Cust_Gender = 'F' and Cust_Salary > '2000000' and Cust_Country = 'Ethiopian';
   
8. select * from Customers
   where Cust_Country = 'Ethiopian' or Cust_Country = 'Uzbekistan';
   
9. select min(Cust_Salary) from Customers;

10. select max(Cust_Salary) from Customers;

11. select count(*) from Customers;
                or
   select count(Cust_ID) from Customers;
   
12. select avg(Cust_Salary) from Customers;

13. select sum(Cust_Salary) from Customers;

14. select * from Customers
	where Cust_Salary between '2000000' and '8000000';

15. select * from Customers 
    where Cust_FirstName like 's%';

16. select * from Customers 
    where Cust_FirstName like '_e%' 
	and Cust_LastName like '%e';

17.  select * from Customers 
	 where Cust_LastName like 'p%a';

18.  select * from Customers 
	where Cust_Country in ('Ethiopian', 'USA', 'France');