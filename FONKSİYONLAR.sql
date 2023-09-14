--------fonksiyon olu�turma
CREATE FUNCTION dbo.getIdAge
(@Id int)
RETURNS int
AS
BEGIN
declare @AGE int
select @AGE = Age from Student where Id = @Id
RETURN @AGE
END

--2 id li ki�i ile ayn� ya�taki ki�iler 
select * from Student where Age = dbo.getIdAge(2)


--toplama
CREATE FUNCTION toplama2
(@s1 int,@s2 int)
RETURNS int
AS
BEGIN
declare @toplam int
select @toplam = @s1+@s2
RETURN @toplam
END

select dbo.toplama2(2,3) as toplam

---id li tablo d�nd�rme
CREATE FUNCTION dbo.getId (@Id int)
RETURNS TABLE
AS
RETURN select * from Student where Id = @Id
-- id li eleman� getir
select * from dbo.getId(9)

---ya�� daha b�y�k ololan tablo d�nd�rme
CREATE FUNCTION dbo.getAge (@Id int)
RETURNS TABLE
AS
RETURN select * from Student where Age >= @Id

select * from dbo.getAge(24)

---ya�� k���k olarak d�zenleme
ALTER FUNCTION dbo.getAge (@Id int)
RETURNS TABLE
AS
RETURN select * from Student where Age <= @Id

select * from dbo.getAge(24)

---silmek
Drop Function dbo.getAge


create function dbo.hesap(@s1 int, @s2 int,@islem int)
returns int
BEGIN 
  declare @sonuc int
 IF (@islem=1) BEGIN select @sonuc = @s1+@s2 END
 IF (@islem=2) BEGIN select @sonuc = @s1-@s2 END
 IF (@islem=3) BEGIN select @sonuc = @s1*@s2 END
 IF (@islem=4) BEGIN select @sonuc = @s1/@s2 END
 RETURN @sonuc
END

select dbo.hesap(8,8,1) as toplam,
dbo.hesap(8,8,2) as fark,
dbo.hesap(8,8,3) as �arp�m,
dbo.hesap(8,8,4) as b�l�m