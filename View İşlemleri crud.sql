----------view yarartmak
CREATE VIEW Students ---en fazla 1024 sütundan oluþur
AS
SELECT * FROM Student----------adý soyadý yaþý tablosu oluþtururCREATE VIEW OzelStudent1
AS
SELECT Name,Surname,Age FROM Student----------adý soyadý yaþý tablosu özel sütun adlarýyla oluþtururCREATE VIEW OzelStudent2 (ADI,SOYADI,YASI)
AS
SELECT Name,Surname,Age FROM Student
---------join örneði
CREATE VIEW OzelStudent3 (ADI,SOYADI,SINIFI)
AS
SELECT Student.Name,Student.Surname,ClassRoom.Name 
FROM Student JOIN ClassRoom
ON Student.ClsId=ClassRoom.Id

---------deðiþiklik
ALTER VIEW OzelStudent3
AS
SELECT ClassRoom.CapacityFROM Student JOIN ClassRoom
ON Student.ClsId=ClassRoom.Id---------silmekDROP VIEW OzelStudent3---------þifrelemek yeniCREATE VIEW OzelStudent3
WITH ENCRYPTION
AS
SELECT Name,Surname,Age FROM Student---------þifrelemek var olan düzenlemeALTER VIEW OzelStudent3 (ADI,SOYADI,SINIFI)
WITH ENCRYPTION
AS
SELECT Student.Name,Student.Surname,ClassRoom.Name 
FROM Student JOIN ClassRoom
ON Student.ClsId=ClassRoom.Idsp_helptext OzelStudent3--þifre kaldýrmakALTER VIEW OzelStudent3 (ADI,SOYADI,SINIFI)
--WITH ENCRYPTION kaldýrarak þifreyi kaldýrrsinýz
AS
SELECT Student.Name,Student.Surname,ClassRoom.Name 
FROM Student JOIN ClassRoom
ON Student.ClsId=ClassRoom.Id  