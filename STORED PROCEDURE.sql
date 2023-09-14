--Ba�ka bir deyi�le, herhangi bir i�levi yerine getirmek i�in yaz�lan kodlar�n bir paket i�erisinde tutulmu� halidir.
--Stored Procedure�ler di�er programlama dillerindeki fonksiyonlarla ayn� i�leve sahiptir.


exec master.dbo.xp_loginginfo

exec sp_helpdb


---------olu�turma
CREATE PROCEDURE yirmiikiustu --PROC
AS
select * from Student where Age>22

exec yirmiikiustu
yirmiikiustu


------------------d�zenleme
ALTER PROCEDURE yirmiikiustu 
--WITH ENCRYPTION sat�ra eklenip ��kar�larak �ifrelenir
AS
select * from Student where Age>=22


------------------Parametre Kullanmak
CREATE PROCEDURE belliyas --PROC
(@age int)
AS
select * from Student where Age>@age

exec belliyas 25
exec belliyas 22

------------------Silmek
DROP PROCEDURE belliyas





