

--Case 1: When the table already exists

alter table test_unique
add unique(lastname)




--Case 2: We need to create the table

create table test_unique(
 SID int unique,
 age tinyint not null,
 firstname varchar(256) not null unique,
 lastname varchar(256)
)


select * from test_unique

insert into test_unique values(1,22,'Mayank','Mehra')

insert into test_unique values(1,24,'Rohit','Singh')

insert into test_unique values(null,34,'Akhilesh','Jain')

insert into test_unique values(null,54,'Nitin','Singh')


truncate table test_unique