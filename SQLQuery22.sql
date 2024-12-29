

select * from dbo.sales
where TotalAmount>=161

select * from dbo.Sales

select ProductID,sum(totalamount) [Sum of Sales] from dbo.Sales
group by ProductID
having sum(totalamount)<700

select ProductID,sum(totalamount) [Sum of Sales] from dbo.Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250
order by ProductID desc

select ProductID,sum(totalamount) [Sum of Sales] from dbo.Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250
order by sum(totalamount) asc