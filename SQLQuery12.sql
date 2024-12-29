

select * from dbo.Employees

--null is different from ''
insert into dbo.Employees
values (9,'Jay','','IT',73000,'2022-04-04')

/* null is different from 0 values*/
insert into dbo.Employees
values (10,'Nitin','shamani','0',54000,'2021-02-22')

-- this statement would not return the true output
select * from dbo.Employees where Department=null

select * from dbo.Employees where Department is null

select * from dbo.Employees where Department is not null