
select * from dbo.sales

select paymentmethod,sum(totalamount) as [Sum of Sales] from dbo.Sales 
group by PaymentMethod

select ProductID,PaymentMethod,sum(totalamount) [Sum of Sales] from dbo.Sales
group by ProductID,PaymentMethod
order by ProductID