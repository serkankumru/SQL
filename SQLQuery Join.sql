select * from Student

select * from ClassRoom


select s.Name,s.Surname from Student s 
inner join ClassRoom c on s.ClsId = c.Id
where c.Name = s.ClassName

select s.Name,s.Surname from Student s 
inner join ClassRoom c on s.ClsId = c.Id
where c.Floor = 2

----ögrencinin dersi olmasa bile getir
select * from Student s 
Left join ClassRoom c on s.ClsId = c.Id
where c.Floor = 3


----Dersin ögrencisi olmasa bile getir
--select * from Student s 
--right join ClassRoom c on s.ClassId = c.Id
--where c.Floor = 3




