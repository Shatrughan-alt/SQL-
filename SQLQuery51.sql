

select * from Customers

select * from Orders

select * from Products

select distinct CustomerName from Customers c inner join Orders o on o.CustomerID=c.CustomerID

select distinct customername from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null


select distinct ProductName,Price from orders o join products p on o.ProductID=p.ProductID

select distinct customername,orderid from customers c left join orders o on o.CustomerID=c.CustomerID

select distinct p.ProductID,productname from Products p left join Orders o on p.ProductID=o.ProductID where o.OrderDate is null


select customername,count(orderid) [Number of Orders] from customers c inner join orders o on c.CustomerID=o.CustomerID group by CustomerName

select customername,count(orderid) [Number of Orders] from customers c left join orders o on c.CustomerID=o.CustomerID group by CustomerName


 select distinct customername,p.productid,productname,orderdate from Customers c left join orders o on c.CustomerID=o.CustomerID left join Products p on o.ProductID=p.ProductID