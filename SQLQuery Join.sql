select * from Student

select * from ClassRoom


select s.Name,s.Surname from Student s 
inner join ClassRoom c on s.ClsId = c.Id
where c.Name = s.ClassName

select s.Name,s.Surname from Student s 
inner join ClassRoom c on s.ClsId = c.Id
where c.Floor = 2

----�grencinin dersi olmasa bile getir
select * from Student s 
Left join ClassRoom c on s.ClsId = c.Id
where c.Floor = 3


----Dersin �grencisi olmasa bile getir
--select * from Student s 
--right join ClassRoom c on s.ClassId = c.Id
--where c.Floor = 3




