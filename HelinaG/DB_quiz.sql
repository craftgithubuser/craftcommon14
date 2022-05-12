create schema  MyDB2;
CREATE TABLE customers (
    Cust_ID INT AUTO_INCREMENT NOT NULL,
    Cust_FirstName VARCHAR(255) NOT NULL,
    Cust_LastName VARCHAR(255) NOT NULL,
    Cust_NickName VARCHAR(255),
    Cust_Age INT,
    Cust_Gender ENUM('F', 'M') NOT NULL,
    Cust_Country VARCHAR(255) NOT NULL,
    Cust_Salary DECIMAL NOT NULL,
    PRIMARY KEY (Cust_ID)
);
 
-- add column Using alter 
-- Name= bonus-- DataType= Integer
-- It doesn't accept null value
alter table customers
add  Age int not null;

-- modify column using alter

            -- Name = Age
            -- Datatype = Integer,
            -- to not accept null value
alter table customers
modify Age int ;


-- Delete column using alter

            -- Name = NickName
            -- Name = bonus
alter table customer_table 
add bonus int not null;
alter table customer_table
drop Cust_Nickname,
drop bonus;

-- Rename Customers Table to Customer Table
rename table customers to Customer_table;
rename table Customer_table to customers;
-- Drop table Customer
drop table Customers;

-- Drop DataBase/schema
drop database mydb2;

-- Again Recreate Schema/DataBase MyDB after we Drop the schema
create schema  MyDB2;
CREATE TABLE customers (
    Cust_ID INT  ,
    Cust_FirstName VARCHAR(255) NOT NULL,
    Cust_LastName VARCHAR(255) NOT NULL,
    Cust_NickName VARCHAR(255),
    Cust_Age INT,
    Cust_Gender ENUM('F', 'M') NOT NULL,
    Cust_Country VARCHAR(255) NOT NULL,
    Cust_Salary DECIMAL NOT NULL,
    PRIMARY KEY (Cust_ID)
);
-- Again Recreate the table Customers with all of it columns after we Drop the customer table 



-- Quiz 3
drop table customers;
CREATE TABLE customers (
    Cust_ID INT AUTO_INCREMENT ,
    Cust_FirstName VARCHAR(255) NOT NULL,
    Cust_LastName VARCHAR(255) NOT NULL,
    Cust_Age INT,
    Cust_Gender ENUM('F', 'M') NOT NULL,
    Cust_Country VARCHAR(255) NOT NULL,
    Cust_Salary long NOT NULL,
    PRIMARY KEY (Cust_ID)
);
-- alter table customers  auto_increment =111;

-- SET  auto_increment_increment=111;
-- SET  auto_increment_offset=-1;

insert  into customers(Cust_ID ,Cust_FirstName,Cust_LastName  ,Cust_Gender ,Cust_Country ,Cust_Salary )
value(111,'Nick','Jones','M','USA',20000000),
(222,'Antony','Martial','M','France',10000000),
(333,'Nebiha','Amir','F','Uzbekistan',360000000),
(444,'Soresa','Hailu','M','Unkown',34000000),
(555,'Beka','Haile','M','Kazakhstan',400000),
(666,'Nick','jones','M','USA',20000000),
(777,'Poul','Pogba','M','France',20000000),
(888,'Betty','G','F','Ethiopia',70000000);
update customers
set  Cust_Country =' Ethiopia'
where    Cust_ID  in (333,444,555);
delete from customers
where     Cust_ID =666;
set sql_safe_updates =0;



