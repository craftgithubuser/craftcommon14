-- this is for quiz;

-- Quiz 2

Create database Mydbq;

use mydbq;

Create table customers(
Cust_Id int auto_increment not null,
Cust_firstName varchar(100) not null,
Cust_LastName varchar(100) not null,
Cust_nickName varchar(100) ,
Cust_Age int,
Cust_Gender char not null,
Cust_country varchar(100) not null,
Cust_Salary dec not null,
primary key(Cust_ID)
);

-- Quiz 3

alter table customers
add Bonus int not null;

alter table customers
modify Cust_Age int not null;

alter table customers
drop column Cust_NickName;
alter table customers
drop column Bonus;

Rename table customers to Customer; 
Drop table customer;
Drop database mydbq;

Create database Mydbq;
use mydbq;

Create table customers(
Cust_Id int auto_increment not null,
Cust_firstName varchar(100) not null,
Cust_LastName varchar(100) not null,
Cust_nickName varchar(100) ,
Cust_Age int,
Cust_Gender char not null,
Cust_country varchar(100) not null,
Cust_Salary dec not null,
primary key(Cust_ID)
);

-- day 4 quiz

Insert into customers(Cust_ID, Cust_FirstName, Cust_LastName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary)
Values(111, 'Nick', 'Jones', 25, 'M', 'USA', 20000000),
(222, 'Antony', 'Martial', 26, 'M', 'France', 10000000),
(333, 'Nebiha', 'Amir', 28, 'F', 'Uzbekistan', 36000000),
(444, 'Soresa', 'Hailu', 30, 'M', 'Unknown', 34000000),
(555, 'Beka', 'Haile', 32, 'M', 'Kazakhistan', 400000),
(666, 'Nick', 'Jones', 34, 'M', 'USA', 20000000),
(777, 'Poul', 'Pogba', 36, 'M', 'France', 20000000),
(888, 'Betty', 'G', 38, 'F', 'Ethiopia', 70000000);

update customers
set Cust_Country = 'Ethiopia'
where Cust_ID in(333, 444, 555);


delete from customers
where Cust_ID = 666;

-- Quiz 5

-- 1. write a query which display all records from the tables?
Select *
from customers;

-- 2. write a query which display all columns from the table where there Citizenship is Ethiopian?
Select *
from customers 
where Cust_Country ='Ethiopia';
-- 3. wite a query which display all columns from the table where there salary greater thatn 5 million?
Select *
from customers
where Cust_Salary > 5000000;

-- 4. write a query which display all Male Customes FirstName, LastName and Country?

Select Cust_FirstName, Cust_LastName, Cust_Country
From Customers
where Cust_Gender = 'M';

-- 5. write a query which display only distinct country?

select distinct Cust_Country
from customers;

-- 6. write a query which display all Female Customes FirstName, LastName and Contry in Descending?

Select Cust_FirstName, Cust_LastName, Cust_Country
from customers
order by Cust_Gender ='F' desc;

-- 7. write a query that display all records from the table where Gender Female, Here Salary is greater thatn 2 million and also Here Citizendship is Ethiopian?
Select *
from customers
where Cust_Gender = 'F' and Cust_Salary = '> 2000000' and  Cust_Country = 'Ethiopia';
-- 8. write a query that display all records from the table where there Citizenship is Ethiopian or Uzbekistan?

Select *
from Customers
where Cust_Country = 'Ethiopia' or 'Uzbekistan';

-- 9. write a query that sisplay minimum Salary from the table?

Select Min(Cust_Salary)
from Customers;

-- 10. write a query that display Maximum fees from the table?

Select max(Cust_Salary)
from customers;

-- 11. write a query that sisplay Number of Custome we have in the table?

Select Count(Cust_Id)
from customers;
-- 12. Write a Query that display Avarage Salary from the record:

Select Avg(Cust_Salary)
from customers;

-- 13. Write a Query that display the sum of all Customers Fees?

Select Sum(Cust_Salary)
from customers;

-- 14. Write a query that display all the record where there salary is between 2million and 8 million?

Select *
from customers
where Cust_salary between 2000000 and 8000000;
-- 15. write a query that display all the record where there first name start with 'S'?

Select *
from Customers
where Cust_FirstName like'S%';
-- 16. write a wuery that display all the record where there first Name have 'e' inthe second position snd his /her last name have end with 'e'

Select*
from Customers
where Cust_FirstName like'_e%' and Cust_lastName like'%e';

-- 17. write a query that display all the record where tere last Name that start with 'P' and ends with 'a'?

select *
from customers
where Cust_LastName like'P%a';

-- 18. write a query that display all the customrs from Ethiopia, USA and France?

Select *
from customers
where Cust_Country in ('Ethiopia', 'USA', 'France');

-- Day-6 quiz

Create table Address(
Cust_Zip varchar(100) not null,
Cust_Sreet varchar(100) not null,
Cust_City varchar(100) not null,
Cust_State varchar(100),
Cust_ID int,
primary key(Cust_Zip),
foreign key(Cust_ID) references Customers (Cust_ID)
);


Insert into Address
Values(1000, 'Megenagna', 'Addis Ababa', 'Addis Ababa', 444),
(2000, '4-killo', 'Addis Ababa', 'Addis Ababa', 555),
(3000, '41-eyesus', 'Addis Ababa', 'Addis Ababa', 888),
(4000, '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
(5000, '01-st', 'San Diego', 'California', null),
(6000, 'Ku-road', 'LosAngeles', 'California', Null),
(7000, 'JK-road', 'Miami', 'Florida', Null),
(8000, 'Lj-road', 'Atlanta', 'Georgia', Null);

-- Inner Join
Select *
from customers inner join Address 
on Customers.Cust_ID = Address.Cust_ID;
 
-- Left outer join 
Select *
from customers left join Address 
on Customers.Cust_ID - Address.Cust_ID;

-- Right outer join

Select *
from Customers  right join Address 
on Customers.Cust_ID = Address.Cust_ID;

-- Full outer join

Select *
from customers left join Address 
on Customers.Cust_ID - Address.Cust_ID
Union
Select *
from Customers right join Address
on Customers.Cust_ID = Address.Cust_ID;

-- creating index for Customers table

create Index Index_Cust
on Customers (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Gender, Cust_Country, Cust_Salary);

Show indexes from Customers;

-- Creating View

Create View CustomerView As
select Cust_ID, Cust_FirstName, Cust_LastName, Cust_Country, Cust_Salary
from customers;

select* from CustomerView;

call Customer();
Call SP_Customer();



