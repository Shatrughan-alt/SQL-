

select * from dbo.Employees

insert into dbo.Employees(EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values(6,'Raj','Ambani','IT',67000,'2023-04-20')

insert into dbo.Employees(EmployeeID,FirstName,LastName)
values(7,'Rohit','Mehra')

insert into dbo.Employees values(8,'Mahesh','Narang','HR',73000,'2024-01-21')

select * from dbo.Employees

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='Employees'
