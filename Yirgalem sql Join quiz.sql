use mydb;

create table Address( 
cust_Zip varchar(25) primary key not null,
 cust_Street varchar(255) not null, 
 cust_City varchar(255) not null, 
 cust_state varchar(255), 
 cust_ID int(255),
 foreign key(cust_ID) references customers(cust_ID)
 );

use mydb;

insert into address(cust_Zip, cust_street, cust_City, cust_State, cust_ID)
values(1000, "megenagn", "Addis Ababa", "Addis Ababa", 444),(2000, "4-Kilo", "Addis Ababa", "Addis Ababa",555),
(3000, "41-eyesus", "Addis Ababa", "Addis Ababa", 888),(4000, "6-Kilo", "Addis Ababa", "Addis Ababa", 333),
(5000,"01-st", "San Diego", "Califorina", null), (6000,"ku-road", "Los Angeles","Califorina",null),
(7000,"Jk road","Miami", "Florida", null),(8000,"Lj-road", "Atlanta","Georgia",null);

select cust_FirstName, Cust_LastName, cust_Street from customers inner join address on  
customers.Cust_ID=Address.cust_ID;

select cust_FirstName, cust_LastName, cust_Street from customers left outer join Address on customers.cust_ID=Address.cust_ID; 

select cust_FirstName, cust_LastName, cust_Street from customers right outer join Address on customers.cust_ID=Address.cust_ID; 

select cust_FirstName, cust_LastName, cust_Street from customers full join address on customers.cust_ID=Address.cust_ID; 



