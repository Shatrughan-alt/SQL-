

select * from [dbo].[EmployeeRecords]
where EmployeeID=2

select EmployeeID,FirstName from [dbo].[EmployeeRecords]
where EmployeeID=2

select * from dbo.EmployeeRecords where Salary>=75000.00

select FirstName,LastName,Department,Salary from dbo.EmployeeRecords where Salary<75000.00

select distinct FirstName,LastName,Department,Salary from dbo.EmployeeRecords where Salary<75000.00