

select * from dbo.Sales

select max(totalamount) [Maximum Amount] from dbo.Sales

select max(saledate) [Max SaleDate] from Sales

select max(paymentmethod) [Max Pay method] from dbo.Sales

--Maximum Quantity sold for each productid
select ProductID,max(quantity) [Maximum Quantity] from dbo.Sales group by ProductID

select * from dbo.Sales

--Maximum total amount for all distinct dates in saledate column
select saledate,max(totalamount)[Maximum Total Amount] from dbo.Sales group by SaleDate