----------view yarartmak
CREATE VIEW Students ---en fazla 1024 s�tundan olu�ur
AS
SELECT * FROM Student----------ad� soyad� ya�� tablosu olu�tururCREATE VIEW OzelStudent1
AS
SELECT Name,Surname,Age FROM Student----------ad� soyad� ya�� tablosu �zel s�tun adlar�yla olu�tururCREATE VIEW OzelStudent2 (ADI,SOYADI,YASI)
AS
SELECT Name,Surname,Age FROM Student
---------join �rne�i
CREATE VIEW OzelStudent3 (ADI,SOYADI,SINIFI)
AS
SELECT Student.Name,Student.Surname,ClassRoom.Name 
FROM Student JOIN ClassRoom
ON Student.ClsId=ClassRoom.Id

---------de�i�iklik
ALTER VIEW OzelStudent3
AS
SELECT ClassRoom.CapacityFROM Student JOIN ClassRoom
ON Student.ClsId=ClassRoom.Id---------silmekDROP VIEW OzelStudent3---------�ifrelemek yeniCREATE VIEW OzelStudent3
WITH ENCRYPTION
AS
SELECT Name,Surname,Age FROM Student---------�ifrelemek var olan d�zenlemeALTER VIEW OzelStudent3 (ADI,SOYADI,SINIFI)
WITH ENCRYPTION
AS
SELECT Student.Name,Student.Surname,ClassRoom.Name 
FROM Student JOIN ClassRoom
ON Student.ClsId=ClassRoom.Idsp_helptext OzelStudent3--�ifre kald�rmakALTER VIEW OzelStudent3 (ADI,SOYADI,SINIFI)
--WITH ENCRYPTION kald�rarak �ifreyi kald�rrsin�z
AS
SELECT Student.Name,Student.Surname,ClassRoom.Name 
FROM Student JOIN ClassRoom
ON Student.ClsId=ClassRoom.Id  