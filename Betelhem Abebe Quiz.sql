
-- Select This is for quiz purpose


Create schema MYDB;
use MYDB;
Create table Customers(
Cust_ID int auto_increment not null primary Key,
Cust_FirstName varchar(100) not null,
Cust_LastName varchar(100) not null,
Cust_NickName Varchar(100),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(100) not null,
Cust_Salary decimal not null
);
alter table customers
add column Bonus int not null;

alter table customers
modify Cust_Age int not null;

alter table customer 
drop column Bonus;

Create schema Mydb;


rename table customers to Customer;


drop table customers;
drop schema mydb;

Create schema Mydb;
use mydb;
Create table Customers(
Cust_ID int auto_increment not null primary Key,
Cust_FirstName varchar(100) not null,
Cust_LastName varchar(100) not null,
Cust_NickName Varchar(100),
Cust_Age int,
Cust_Gender char not null,
Cust_Country varchar(100) not null,
Cust_Salary decimal not null
);
alter table customers
drop Cust_Age;

Insert into Customers (Cust_ID, Cust_FirstName, Cust_LastName, Cust_Gender, Cust_Country, Cust_Salary)
Values (111, 'Nick', 'Jones', 'M', 'USA', 20000000),
		(222, 'Antony', 'Martial', 'M', 'France', 10000000),
        (333, 'Nebiha', 'Amir', 'F', 'Uzbekistan', 36000000),
        (444, 'Soresa', 'Hailu', 'M', 'Unknown', 34000000),
        (555, 'Beka', 'Haile', 'M', 'Kazakhstan', 400000),
        (666, 'Nick', 'Jones', 'M', 'USA', 20000000),
        (777, 'Poul', 'Pogba', 'M', 'France', 20000000),
        (888, 'Betty', 'G', 'F', 'Ethiopia', 70000000);
        
update customers
set Cust_country = 'Ethiopia'
where Cust_ID in(333, 444, 555);

delete from customers
Where Cust_ID = 666;
use mydb
-- Quiz 5;

Select * 
from customers

Select *
from Customers
where Cust_country = 'Ethiopia';

Select *
from customers
where Cust_Salary >5000000;

select Cust_FirstName, Cust_LastName, Cust_Country
from customers
where Cust_Gender = 'M';
Show indexes from customers





