SELECT * FROM mydb.customers; 
use mydb;
 
create table mydb.Address(
cust_zip varchar(20) not null,
Cust_Street varchar(200) not null,
Cust_City varchar(50) not null,
Cust_State varchar(50),
Cust_ID int,
primary key (cust_zip)
);

insert into Address( CUST_ZIP, CUST_STREET, CUST_CITY, CUST_STATE, Cust_ID)
values(1000, 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
(2000, '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
(3000,'41-eyesus', 'Addis Ababa', 'Addis Ababa', 888),
(4000, '6-kilo', 'Addis Ababa', 'Addis Ababa', 333);

insert into Address(CUST_ZIP, CUST_STREET, CUST_CITY, CUST_STATE)
VALUES(5000, '01-st', 'San Diego', 'California'),
(6000, 'kU-road', 'Los Angeles', 'California'),
(7000, 'JK-road', 'Miami', 'Florida'),
(8000, 'Lj-road', 'Atlanta', 'Georgia');

---inner joint 

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
 
 select cust_id
 from customers 
 inner join address 
 on customers.cust_id =address.Cust_id;


--LEFT OUTER JOIN
 
 SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
 
 SELECT CUST_ID 
 FROM customers
 left join address
 on customers.cust_id=address.cust_id;
 
 --Right outer join.

SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

select cust_id
from customers
right join address
on customers.cust_id=address.cust_id;

 --FULL OUTER JOIN.
 
 SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

select costomers.cust_id, address.cust_id
from customers
FULL OUTER JOIN address
on customers.cust_id=address.cust_id;
order by customers.cust_id;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;


drop table address;

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
 
 insert into Address (Cust_Zip, Cust_Street, Cust_City, Cust_state, Customer_ID)
values (1000, 'megenagn', 'Addis Ababa', 'Addis Ababa', 444),
(2000, '4-kilo', 'Addis Ababa', 'Addis Ababa', 555),
(3000, '41-eyesus', 'Addis Ababa', 'Addis Ababa', 888),
(4000, '6-kilo', 'Addis Ababa', 'Addis Ababa', 333),
(5000, '01-st', 'San Diego', 'California', null),
(6000, 'kU-road', 'Los Angeles', 'California', null),
(7000, 'JK-road', 'Miami', 'Florida', null),
(8000, 'Lj-road', 'Atlanta', 'Georgia', null);
 

--inner joint
select *
from customers c inner join Address A
on c.cust_id= A.Customer_ID;

--left joint

select *
from customers c left join Address A
on c.cust_id= A.Customer_ID;

--right joint

select *
from customers c right join Address A
on c.cust_id= A.Customer_ID;



- we are making full join

select *
from customers c right join Address A
on c.cust_id= A.Customer_ID
union
select *
from customers c left join Address A
on c.cust_id= A.Customer_ID;

 





