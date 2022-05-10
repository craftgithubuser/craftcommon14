create database MyDB;

use MyDB;


create table Customers(
 Cust_ID  int auto_increment not null primary key,
 Cust_FirstName  varchar(255) not null,
 Cust_LastName varchar(255) not null,
 Cust_NickName  varchar(255),
 Cust_Age   int,
 Cust_Gender Character not null,
 Cust_Country varchar(255)not null,
 Cust_Salary  Decimal not null
);


alter table Customers
add Bonus int not null;

alter table Customers
modify Cust_Age int not null;

alter table Customer
drop  Cust_NickName;
            
alter table Customer
drop  Bonus;




Rename table Customers to Customer;

Drop table Customer;

Drop schema MyDB;



insert into customer (Cust_Id, Cust_FirstName, Cust_LastName, Cust_Age, Cust_Gender, Cust_Country, Cust_Salary)
value(111, "Nick", "Jones", 25 ,"M", "USA", 20000000),
     (222, "Anthony","Martial", 35, "M", "France",10000000),
     (333, "Nebiha", "Amir", 45, "F", "Uzbekistan", 36000000),
     (444, "Soresa", "Hailu", 35 ,"M", "Ethiopia", 34000000),
     (555, "Beka", "Haile", 45, "M", "kazakhstan", 400000),
     (666, "Nick", "Jones", 55, "M", "USA", 20000000),
     (777, "Poul", "Pogba", 65, "M", "France", 2000000),
     (888, "Betty", "G", 75, "F", "Ethiopia", 70000000);


update customer
set Cust_Country = "Ethiopia"
where Cust_Id in (333,555);


delete from customer
where Cust_Id= 666;
  

