

select * from Customers

select * from Orders


select * from customers where customer_id in (
select distinct customer_id from Orders where order_date between '2024-08-01' and '2024-08-31'
)




select * from customers where customer_id in (
select distinct customer_id from Orders where order_date not between '2024-08-01' and '2024-08-31'
)



select * from Employees


--fetch data where salary > average salary

select * from employees where Salary>(select avg(Salary) from employees)


select avg(Salary) from employees