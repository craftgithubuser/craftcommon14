
use mydb;
create table Address(
Cust_Zip varchar(255) not null,
Cust_Street varchar(255) not null,
Cust_City varchar(255) not null,
Cust_state varchar(255),
Customer_ID int ,
primary key (Cust_Zip),
foreign key (Customer_ID) references customer (cust_id)
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

-- we are making full join

select *
from customers c right join Address A
on c.cust_id= A.Customer_ID
union
select *
from customers c left join Address A
on c.cust_id= A.Customer_ID;customer