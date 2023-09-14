select * from Student

select Id,Name,ClsId from Student

select Id,Name,ClsId from Student where Id=4

select Name,Age from Student where Age>22

select * from Student where Name='serkan'

select name, Name,Age,Age from Student 

select * from Student where Surname like '%ince'

insert into Student values('Samet','Kýlýcý',24,'sc-305')
select * from Student 

select * from Student where Age = 24 and name = 'Simge'

update Student set ClassName = 'sc-303' where Id = 19

select * from Student where Age = 24 

select * from Student where not Name in('bora','simge')

insert into Student (Name ,Age) values('Samet',24)

delete from Student where Id = 21

update Student set ClsId = 3 where Id = 15

update Student set CreateDate = GETDATE()


update Student set ClassName = 'sc-202' where ClsId=2

update Student set ClassName = 'sc-101' where ClsId=1

select max(Age) as 'Max' from Student
select min(Age) as 'Min' from Student
select count(*) as 'Eleman Sayýsý' from Student
select avg(Age) as 'Ortalama' from Student
select sum(Age) as 'Toplam'  from Student

select * from Student where name like '%a%'--a% a ile baþlayan. %a% içinde a olan. %a a ile biten. [abc] içeren



