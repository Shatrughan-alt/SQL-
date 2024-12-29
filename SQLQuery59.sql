

--isnull, coalesce function

select * from customers

--Isnull
select ISNULL(null,'1st vale is null')

select isnull('abx',null)

select ISNULL(null,null)

--Coalesce

select coalesce('A','B','C')

select coalesce(null,'B','C')

select coalesce(null,null,'C')



--Apply these things on customer table

select customerid,email,phonenumber from customers

select customerid,isnull(email,'Email NA'),isnull(phonenumber,'Ph No NA') from customers

select customerid,coalesce(email,phonenumber,'Contact NA')[Coalesce Function] from customers