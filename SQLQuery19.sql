-- null value ignored by sum,max,min,avg count etc.

select * from dbo.sales

select sum(quantity)[Total Quantity] from dbo.Sales

select sum(quantity)[Total Quantity],sum(totalamount)[Sum of Amount] from dbo.sales

select avg(quantity)[Average Quantity] from dbo.Sales

select avg(quantity)[Avg Quantity],avg(totalamount)[Avg Amount] from dbo.sales

select * from dbo.sales

--Sum of quantity,sum of total amount,avg of quantity,avg of total amount for each distinct product
select productid,
sum(quantity)[Total Quantity],
sum(totalamount) "Sum of Amount",
avg(quantity)[Avg Quantity],
avg(totalamount)[Avg Amount] 
from dbo.sales 
group by ProductID

select * from dbo.sales

--Sum of quantity,sum of total amount,avg of quantity,avg of total amount for distinct combination of productid and storeid
select productid,
StoreID,sum(quantity)[Total Quantity],
sum(totalamount) "Sum of Amount",
avg(quantity)[Avg Quantity],
avg(totalamount)[Avg Amount] 
from dbo.sales 
group by ProductID,StoreID

select * from dbo.sales

-- return total no of records available
--here it will count null values also
select count(*)[Number of Rows] from dbo.Sales
--but here not because null value only initialized to paymentmethod column only
select count(paymentmethod)[No of Records] from dbo.Sales

select count(distinct productid)[Distinct Products] from dbo.Sales
 --null value ignored   => null name column is there but the [Distinct Pay Mode] value =0 for null.
select paymentmethod,count(distinct paymentmethod)[Distinct Pay Mode] from dbo.Sales group by paymentmethod


select paymentmethod,count(paymentmethod)[Distinct Pay Mode] from dbo.Sales group by paymentmethod

-- here null name column is there and the [Distinct Pay Mode] value =2 for null as we are not using paymentmethod column for counting.
select paymentmethod,count(*)[Distinct Pay Mode] from dbo.Sales group by paymentmethod