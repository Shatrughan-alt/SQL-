

-- Case 1: Table doesn't exists
create table test_check(
EID int,
firstname varchar(256),
age tinyint check(age>=10)
)

select * from test_check

insert into test_check values(1,'Mayank','20')

insert into test_check values(2,'Raj',9)



update test_check set EID =11 where Eid=1

-- Case 1: Table exists

alter table test_check
add check(eid>5)


insert into test_check values(3,'Nitin',34)




insert into test_check values(30,'Nitin',34)