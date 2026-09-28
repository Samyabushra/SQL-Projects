--Non Manditory Assignmnet -3
use Non_Mandatory;
select * from customer;
--1. Create an ‘Orders’ table which comprises of these columns: 
--‘order_id’,order_date’, ‘amount’, ‘customer_id’.
create table orders1 (orderid int, orderdate date, amount int,
customerid int);

--2. Insert 5 new records. 
insert into orders1 values
(1, '2024-07-08', 1500, 1),
(2, '2024-08-08', 1100, 2),
(3, '2025-07-07', 1000, 5),
(4, '2025-06-06', 900, 3),
(5, '2026-05-05', 750, 8);
select * from orders1;

--3. Make an inner join on ‘Customer’ and ‘Orders’ tables
--on the ‘customer_id’ column.
select * from customer
inner join
orders1
on customer.customerid = orders1.customerid;

--4. Make left and right joins on ‘Customer’ and ‘Orders’
--tables on the‘customer_id’ column. 
select * from customer
Left join
orders1
on customer.customerid = orders1.customerid;
select * from customer
Right join
orders1
on customer.customerid = orders1.customerid;

--5. Make a full outer join on ‘Customer’ and ‘Orders’
--table on the ‘customer_id’ column. 
select * from customer
full join
orders1
on customer.customerid = orders1.customerid;

--6. Update the ‘Orders’ table and set the amount to be 
--100 where‘customer_id’ is 3
Update orders1
set amount = 100
where customerid = 3;
select * from orders1;

--Non Manditory Assignment 4
--orders table
--with 3 columns, and insert 5 rows
--customer_id,customer_name, amount

--1. Use the inbuilt functions and find the minimum,
--maximum and average amount from the orders table
select min(amount) as min_amount from orders1;
select max(amount) as max_amount from orders1;
select avg(amount) as avg_amount from orders1;

--2. Create a user-defined function which will 
--multiply the given number with 103. 
create function Multiply_num(@num int)
Returns int
AS
Begin
return @num * 103;
end
select dbo.multiply_num(10) as result;

--3. Use the case statement to check if 100 is less than 200, 
--greater than200or equal to 200 and print the corresponding value.
select 
case
  when 100 < 200 then '100 is less than 200'
  when 100 > 200 then '100 is greater than 200'
  else '100 is equal to 200'
end as result;

--4. Using a case statement, find the status of the amount.
--Set the status of the amount as high amount, low amount or
--medium amount based upon the condition.
select
case
    when amount > 700 then 'highamount'
    when amount between 300 and 500 then 'medium amount'
	else 'less amount'
end as result from orders1



--5. Create a user-defined function, to fetch the amount
--greater than then given input.
create function input(@input_amount int)
Returns table
As
Return
( 
   select * from orders1 where amount > @input_amount
)
select * from dbo.input(250) as result;












