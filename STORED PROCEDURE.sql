--Baþka bir deyiþle, herhangi bir iþlevi yerine getirmek için yazýlan kodlarýn bir paket içerisinde tutulmuþ halidir.
--Stored Procedure’ler diðer programlama dillerindeki fonksiyonlarla ayný iþleve sahiptir.


exec master.dbo.xp_loginginfo

exec sp_helpdb


---------oluþturma
CREATE PROCEDURE yirmiikiustu --PROC
AS
select * from Student where Age>22

exec yirmiikiustu
yirmiikiustu


------------------düzenleme
ALTER PROCEDURE yirmiikiustu 
--WITH ENCRYPTION satýra eklenip çýkarýlarak þifrelenir
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





