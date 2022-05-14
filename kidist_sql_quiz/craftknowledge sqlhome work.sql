create database MyDB;
 
 use mydb;

 create table customer(
cust_ID int auto_increment not null,
cust_FirstName varchar (255) not null,
cust_LastName varchar (255) not null, 
cust_NickName varchar(255) not null,
cust_Age int,
cust_Gender char(5) not null,
cust_Country varchar(255) not null,
cust_Salary dec not null,
primary key (cust_ID)
);


alter table customers
add column bonus int not null; 

alter table customers
modify cust_Age int not null;

alter table customers
drop cust_NickName;

alter table customers
drop  bonus;

rename table
customers to customer;

drop table customer; 

 drop database Mydb;
 
 
 create database Mydb;
 
 use mydb;
 
 create table customer(
 
cust_ID int auto_increment not null,
cust_FirstName varchar (255) not null,
cust_LastName varchar (255) not null, 
cust_NickName varchar(255) not null,
cust_Age int,
cust_Gender char(5) not null,
cust_Country varchar(255) not null,
cust_Salary dec not null,
primary key (cust_ID)
);
 use mydb;
 insert into customer
(Cust_ID, Cust_FirstName,cust_lastname,cust_Age,cust_gender,cust_country,cust_salary)
 values(111,"Nick","Jones",26,"M","USA",20000),
 (222,"Antony","Martial",24,"M","France",100000),
(333,"Nebiha","Amir",24,"F","Uzbekistan",360000), 
 (444,"Sorasa", "Hailu",24,"M","Unkown",340000),
 (555,"Beka","Hailu",25,"M","Kazakhstan",400000),
 (666,"Nick","Jones",26,"M","USA",200000),
(777,"Poul","Pogba",26,"M","France",7000000),
 (888,"Batty","G",27,"F","Ethiopia",7500000);
 
 alter table customer
 drop column cust_nickname;
 
 
select *from mydb.Customers;
 *from where ="Ethiopia, 
 *where Cust_Salary>"5000000";
 Cust_FirstName,LastName,Cust_Countery from Customers where Cust_Gender="M";
 distinct from Customers;
 Cust_Cust_FirstName,Cust_LastName,Cust_Country from Customers where Cust_Gender="F"order by Cust_Coountry desc;
 *from Customers where Cust_Gender="F"and Cust_Salary>"2000000"and Cust_Countery="Ethiopia";
 *from Customers where Cust_Countery="Ethiopia"or Cust_Country=Uzbekistan";
 select min (Cust_Salary)from Customer;
 select max (cust_ID) from Customer;
 
 select count(*) as no_Customer from Customer;
 select avg(Cust_Salary) fromCoustomer;
 select sum(Cust_Salary)from Customer;
 select *from Customers where Cust_Salary between 2000000 and 8000000;
 select *from Customers where Cust_FirstName like 'S %';
 select *from Customers where Cust_LastName like 'P%';
 select * from Customers where Cust_Conutry in  ("Ethiopia","USA","France");
 
 
 
 
 
 

 
 












 
 
 
 
 
 







 
