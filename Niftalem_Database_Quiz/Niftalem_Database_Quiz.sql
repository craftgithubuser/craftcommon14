  use mydb

                                  -- Introduction To Database quiz 
                                           -- Short Answer


            -- 1.     what is Data?
/* data mean that the company collects distinct pieces of information about an object. 
Data is a facts that can be recorded. It may be a text, number, Videos, images.*/

            -- 2.       what is Information?

/* Information is processed, organized and structured data. It provides context for data and enables decision making processes.*/


           -- 3.      what is Database(DB)?
/* A database is an organized collection of structured information, or data, typically stored electronically in a computer system.*/

 
           -- 4.      What is the Relation Database Management System(RDBMS)?
	/*A relational database is a type of database. 
    It uses a structure that allows us to identify and access data in relation to another piece of data in the database.
    Often, data in a relational database is organized into tables.*/;


           -                   -- 5. Define the importance of Relation Database Management System(RDBMS)?
/*A relational database is a type of database that stores and provides access to data points that are related to one another. 
Relational databases are based on the relational model, an intuitive, straightforward way of representing data in tables.*/


		   -               -- 6.     As we all know that there are Two types of Database. Relational Database(SQL) AND Non-Relational DB(NO sql).
                                    -- what is the difference between them.
/*A relational database is structured, meaning the data is organized in tables. Many times, the data within these tables
 have relationships with one another, or dependencies.
 A non relational database is document-oriented, meaning, all information gets stored in more of a laundry list order.*/


                            -- 7. 	List examples of Relation Database Management System(RDBMS)?
                            
	/* MYSQL,Microsoft SQL Server, Oracle, Postgre SQl etc */


                             -- 8.       List examples of Non-Relational DB(Nosql)? 
/* Intersystem IRIS, IBM Cloudant, IBM Cloud Database, Couchbase etc...*/


                             -- 9.       Define and Describe is Structured Query Language(SQL)?
/* DEFINITION :- Structured Query Language (SQL) is a programming language designed to 
                  get information out of and put it into a relational database.
Structured Query Language (SQL) is a standardized programming language that is used to 
manage relational databases and perform various operations on the data in them.

                               -- 10.       List and Describe each of the different subsets of SQL(Mean DDL, DML, DCL, TCL)?
/*These SQL commands are mainly categorized into four categories as: 
DDL – Data Definition Language 
DML – Data Manipulation Language
DCL – Data Control Language
			10.1.  DDL:-  or Data Definition Language actually consists of the SQL commands that can be used to define 
					     the database schema. is used to create and modify the structure of database objects in the database.
						 is a set of SQL commands used to create, modify, and delete database structures but not data.
			10.2  DML :- The SQL commands that deals with the manipulation of data present in the database belong to 
                          Select, Insert,Delate the data.
			10.3 DCL :- Data Control Language includes commands such as GRANT and REVOKE which mainly deal with 
                         the rights, permissions, and other controls of the database system.
			10.4 TCL :- Transaction Control commands that help the user manage the transactions that take place in a database.
COMMIT. ROLL            BACK and SAVEPOINT are the most commonly used TCL commands in SQL.
            
                                     -- 11.      what is table in Database(DB)?
             /* A database is a set of data stored in a computer. This data is usually structured in a way that makes the data easily accessible.*/

			                          -- 12.     what is column and Row(tuples) in table?
	/*  Columns are labeled with a descriptive name (say, age for example) and have a specific data type.
		And Rows are often called records means the whole data we ear insert*/

    
    
                      --  DDL Quiz
                      
    Use studentsinfo;
-- add column Using alter 
            -- Name= bonus
            -- DataType= Integer
            -- It doesn't accept null value
            
	   Alter Table employee
         add column bonus int not null;

-- modify column using alter
		      -- Name = Age
            -- Datatype = Integer,
            -- to not accept null value
  Alter Table employee
         add column age int ;
Alter Table employee 
modify column age int not null;

-- Delete column using alter
            -- Name = NickName
            -- Name = bonus
  Alter Table employee
 add column NickName int;
 
   Alter Table employee
 Drop NickName;

-- Rename Customers Table to Customer Table
create table customers 
(Cust_ID int not null auto_increment ,
First_name varchar(255) not null,
Last_name varchar(255) not null,
Cust_City varchar(255) not null,
Cust_state varchar(255),
primary key (Cust_id));

ALTER TABLE customers RENAME customer;

-- Drop table Customer
alter table customer 
drop customer;

-- Drop DataBase/schema
Create schema Test;
use Test;

Drop schema Test;

-- Again Recreate Schema/DataBase MyDB after we Drop the schema
Create database MYDB;
use MYDB;
-- Again Recreate the table Customers with all of it columns after we Drop the customer table 
create table customer 
(Cust_ID int not null auto_increment ,
cust_First_name varchar(255) not null,
cust_Last_name varchar(255) not null,
cust_age  int,
cust_Gender char(2),
cust_Country varchar (255),
cust_Salary decimal,
primary key (Cust_id));

                       -- DDL Command 2Quiz

-- 1.       Create a database or  Schema called MyDB
Create database MYDB;

-- 2.       Create a table  name customers
		-- inside customers table add acolumn;

       /*  column Name,         Datatype  
  
       - Cust_ID                  - integer        make it auto increment and didn't accept null value 

       - Cust_FirstName    - String	     didn't accept null value

       - Cust_LastName     - String         didn't accept null value

       - Cust_NickName    - String
       
       - Cust_Age                    - integer

       - Cust_Gender             - Character      didn't accept null value

       - Cust_Country            - String             didn't accept null value

       - Cust_Salary               - Decimal           didn't accept null value

       - uniquely identifies each record in a table by Cust_ID*/
       
       create table customers 
(Cust_ID int not null auto_increment ,
cust_First_name varchar(255) not null,
cust_Last_name varchar(255) not null,
cust_NickName varchar(255),
cust_age  int,
cust_Gender char(2) not null,
cust_Country varchar (255) not null,
cust_Salary decimal not null ,
primary key (Cust_id));

       
                         -- DML Quiz

                                   -- Performing DML


-- Insert the following Data in to Customers table

 alter table customers Auto_Increment=111;

insert into  customers  (Cust_ID ,cust_First_name,cust_Last_name,cust_age,cust_Gender ,cust_Country ,cust_Salary ) values
(null,'Nick', 'Jones', null, 'M', 'USA', 20000000),
(null,'Antony', 'Marial',null, 'M', 'France', 10000000),
(null, 'Nebiha', 'Amir',null, 'F', 'Uzbekistan', 36000000),
( null,'Soresa', 'Hailu', null,'M', 'Unkown', 34000000),
(null, 'Beka', 'Haile', null,'M', 'Kazakhastan', 400000),
(null, 'Nick', 'Jones', null,'M', 'UAS', 20000000),
(null,'Poul','Pogba', null, 'M', 'France', 20000000),
(null,'Betty', 'G',null,  'F', 'Ethiopia',70000000);

Select * From customers ;
 
/*-- Update

    Cust_ID=333,444,555 
    Country to Ethiopian
    
    -- Delete 
    cust_Name=nick jones 
    WhichCust_ID is 666*/
    
Update customers set cust_Country = 'Ethiopia' Where Cust_ID  In (333,444,555 );


          -- To Delete cust_Name=nick jones WhichCust_ID is 666;
    Delete From customers where Cust_ID = 666
    
    
    
            
                           -- Join Quiz

                            -- Creating Another Table


/*1.      Create a table  name Address inside MyDB Database

2.      -- inside Address table add column 

        column Name         Datatype  
  
        - Cust_ZIP               - Stirng         didn't accept null value 

        - Cust_Street            - String	      didn't accept null value

        - Cust_City               - String         didn't accept null value

        - Cust_State              - String

        - Cust_ID                  - integer

        - uniquely identifies each record in a table by Cust_ZIP

        - The Customers table and Address table are connected by Cust_ID

3.       Insert the following Data in to Address table

Write a query that perform INNER JOIN, LEFT OUTER JOIN, Right outer join and FULL OUTER JOIN.*/;


use MYDB;
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

Select * From Address;

select *
from customers c inner join Address A
on c.cust_id= A.Customer_ID;

select *
from customers c left join Address A
on c.cust_id= A.Customer_ID;

select *
from customers c right join Address A
on c.cust_id= A.Customer_ID;

-- we are making full join

select *
from customers c right join Address A
on c.cust_id= A.Customer_ID
union
select *
from customers c left join Address A
on c.cust_id= A.Customer_ID;


                    -- Aggregate Function & Specail Operators Quiz
              
                    -- Write A Query for the following


-- 1.      Write a query which display all Records from the table?

                   select * From Table_Name;
       
-- 2       Write a query which display all columns from the table where  there Citizenship is Ethiopian?

                    select * From Table_Name where Citizenship = 'Ethiopian';
 
-- 3.      Write a query which display all columns from the table where  there Salary greater than 5million?

                   Select * From Table_Name where Salary > 50000000;

-- 4.       Write a query which display all Male Customers FirstName, LastName and Country?

                  Select FirstName , LastName , Country From Table_Name Where Gender = 'Male';

-- 5.      Write a query which display only distinct Country?

				Select distinct Country From Table_Name;

-- 6       Write a query which display all Female Customers FirstName, LastName and Country in  descending?

                 Select FirstName , LastName , Country From Table_Name Where Gender = 'Female' Order By descending;

-- 7.      Write a query that display all records from the table where Gender female, Here salary is greater than 2million and 
          -- also Here Citizenship is Ethiopian?

                 Select * From Table_Name where Salary > 20000000   And  Citizenship = 'Ethiopian';

-- 8.       Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?

                 Select * From Table_Name where  Citizenship = 'Ethiopian' Or Citizenship = 'uzbekistan';

-- 9.        Write a query that display Minimum Salary from the table?

				Select Min(Salary) As MinSalary From Table_Name;

-- 10.      Write a query that display Maximum Fees from the table?

				Select Max(Fees) As MinFees From Table_Name;

-- 11.      Write a query that display Number of Customer We have in the table?

               Select Count(*) As NoOfCestomer From Table_Name;

-- 12.       Write a query that display Average Salary from the record?

               	Select AVE(Salary) As AVESalary From Table_Name;

-- 13.       Write a query that display The sum of all customers Fees?

                Select SUM(Fees) As TotalFees From Table_Name;

-- 14.      Write a query that display all the record where there salary is between 2million and 8million?

                	Select * From Table_Name Where Salary between 20000000 and 80000000;

-- 15.      Write a query that display all the record where there firstName start with 'S'?

                    Select * From Table_Name Where firstName Like 'S%';

-- 16.       Write a query that display all the record where there firstName have 'e' in the second position and 
             -- His/er lastName have end with 'e'?

                     Select * From Table_Name Where firstName Like '_e%' And lastName Like '%e';

-- 17.       Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?

                      Select * From Table_Name Where lastName Like 'P%a';

-- 18.      Write a query that display all the customers from Ethiopia, USA and France? 

					 Select * From Table_Name Where Country In  ('Ethiopia', 'USA' , 'France');
                     
                     
                     