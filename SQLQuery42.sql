

create database constraints

use constraints


--case 1:- we will have to create a new table

create table test_not_null(
eid int not null,
age tinyint,
firstname varchar(256))


select * from test_not_null


select * from INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME like 'test_not_null'

insert into test_not_null values(1,23,'Mayank')

insert into test_not_null values(null,23,'Mayank')

insert into test_not_null values(2,null,'Raj')


--Case 2:-  THE TABLE ALREADY EXISTS
--WE WANT TO MAKE FIRSTNAME COLUMN NULLABLE


alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values(21,34,null)


alter table test_not_null
alter column age tinyint not null   => already have null thats why not able to make it null