--Non Manditory Assignment -1

create database sqlAssignment1
 use sqlAssignment1
--1. Install MS SQL Server
1.Go to microsoft website and download server.
2.select installation type(customic or basic)
3.Accept liscense terms
4.click on install
5.choose standalone serevr
6.make necessary setup to sql serevr based on it requirement.
7.install ssms
8.connect with sql serevr with sssms
9.click on new query to create queries.

--2. Give the difference between Char and Varchar data type.
char - character
it is afixed data type
this is used for constitent data
there will wastage of memory in char
syntax - columnname char(10)
Ex: Mahesh  -6 char , 44 gone to be in char.
varchar - variable character
it is used for inconstitent data
 no wastage of emmory
 ex: mahesh - 6 char space, nd remaining 44 space is no gone gone to waset.

--3. Explain the types of SQL Commands. 
DDL, DML, DQL, DCL, TCL
DDL - data defintion language
create, alter, drop, truncate
create - create tables, views, databases.
alter  - alter the table structure
drop - used to drop th table, database
truncate - structure of table of table remains asame data will be deleted
DML - data Manipulation language
insert, update, delete
insert - data or records
upadte - upadte data which is lready present in the table
DQL - data query langauge
select - used to retrieve data from table
DCl - data control language
grant, revoke
grant - used to give permisssion
revoke - take back permisssion
TCL- Transaction control language
commit, rollback,savepoint
commit - to save the transaction
rollback - to go previous state
savepoint - used to save data upto some point.

--4. Explain NVarchar and Nchar.
Nchar - national character unicode
nvarchar - national variable character unicode
Nchar - fixed length unicode
zipcode, country
nvarchar - variable type unicode
 langauegs, customer name.


create table emp1 (empid int, emp_code nvarchar(20))
insert into emp1 values (2, 'N &&&&')
select * from emp1


--Non Manditory Assignment - 2

--1. Create a customer table which comprises of these columns: 
--‘customer_id’,‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’ 
create table customer
(
customerid int,
firstname varchar(50),
lastname varchar(30),
email varchar(30),
address varchar(30),
city varchar(20),
state varchar(40),
zip char(6))
--2. Insert 5 new records into the table
insert into customer values
(1, 'Trilokan', 'das', 'abc@gmail.com', '1stline vupe', 'Banglore', 'karnataka','520003'),
(2, 'durai','raja','raja@intellipaat.com', 'Mg road', 'chennai','tamolnadu', '430002'),
(3, 'rachana','verma','rachana@tcs.com', 'lanagar', 'Sanjose' ,'madhya pradesh', '549912'),
(4, 'ram', 'krishna','rk@gamil.com','MG road','vijaywada', 'Andhra pradesh', '520012'),
(5, 'renuka','rathi','rr@gmail.com','mainroad','noida', 'uttarpradesh','201301')
select * from customer

--3. Select only the ‘first_name’ and ‘last_name’ columns fromthe customer table
select firstname, lastname from customer;

--4. Select those records where ‘first_name’ starts with “G” and city is ‘SanJose’.
select * from customer where firstname like 'g%' and city = 'sanjose'

--5. Select those records where Email has only ‘gmail’. 
select * from customer where email like '%gmail%'
select * from customer where email like '%@gmail.com'

--6. Select those records where the ‘last_name’ doesn't end with “A”.

select * from customer where lastname not like '%a'


--Non Manditory Assignmnet - 3
--1. Create an ‘Orders’ table which comprises of these columns: 
--‘order_id’,order_date’, ‘amount’, ‘customer_id’.

create table orders (
orderid int, orderdate date,
amount int, customerid int
)

--2. Insert 5 new records. 
insert into orders values
(1, '2024-07-08',1500, 1),
(2,'2024-07-09', 1100, 2),
(3,'2024-07-07',1000, 5),
(4, '2024-08-06',900,3),
(5, '2024-05-05', 750, 8)
select * from orders

--3. Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.
select * from customer
inner join
orders
on customer.customerid = orders.customerid

--4. Make left and right joins on ‘Customer’ and ‘Orders’ tables on the‘customer_id’ column. 
select * from customer
left join
orders
on customer.customerid = orders.customerid

select * from customer
Right join
orders
on customer.customerid = orders.customerid

--5. Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column. 
select * from customer
full  join
orders
on customer.customerid = orders.customerid

--cross join
--returns cartesian prodcut
--every row is combine other rows
select * from customer
cross join
orders

--6. Update the ‘Orders’ table and set the amount to be 100 where‘customer_id’ is 3
select * from orders
update orders
set amount = 100
where customerid = 3








