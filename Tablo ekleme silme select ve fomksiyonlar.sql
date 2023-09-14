CREATE TABLE departments (
departmentID int NOT NULL PRIMARY KEY,
departmentName VARCHAR(20),
facultyID int
)
CREATE TABLE faculties (
facultyID int NOT NULL,
facultyName VARCHAR(20),
CONSTRAINT pk_faculties PRIMARY KEY (facultyID),
CONSTRAINT fk_faculties_departments
FOREIGN KEY (facultyID) REFERENCES departments(facultyID)
)

SELECT * FROM Student --Bb�t�n alanlar

SELECT Name, Surname FROM Student --B��rencilerin sadece Ad� ve Soyad�

SELECT * FROM Student, ClassRoom --��renciler ve b�l�mler

SELECT DISTINCT Name, Surname FROM Student--tekrar� �nler

SELECT Student.Name,Student.Surname,Student.Name,ClassRoom.Name
FROM Student, ClassRoom

--where
SELECT * FROM Student WHERE Id = 5
SELECT * FROM Student WHERE Id < 8
SELECT * FROM Student WHERE Id > 12

--and or not
SELECT * FROM Student WHERE (Id>10) AND (ClassName='sc-202')
SELECT * FROM Student WHERE (Id>10) OR (ClassName='sc-202')
SELECT * FROM Student WHERE NOT (ClassName='sc-101')

-- +-*/
SELECT Name+' '+Surname,Age*2 FROM Student 
SELECT Name+' '+Surname,Age/2 FROM Student 
SELECT Name+' '+Surname,Age+2 FROM Student 
SELECT Name+' '+Surname,Age-2 FROM Student 

SELECT * FROM Student WHERE Age BETWEEN 23 AND 30

SELECT Name, Surname FROM Student
WHERE ClassName IN ('sc-101', 'sc-303')

SELECT Name, Surname FROM Student WHERE Name LIKE 'S%'
SELECT Name, Surname FROM Student WHERE Name LIKE '%E%'
SELECT Name, Surname FROM Student WHERE Name LIKE '_E%'

SELECT * FROM Student
WHERE ClassName IN ('sc-101', 'sc-303')
ORDER BY Age DESC,Id  ASC--ASC a-z DESC z-a  ya�a g�re azalan id ye g�re artan



SELECT Name,
 LEN (Name) AS "UZUNLUK",
 LEFT (Name, 3) AS "BA�TAN",
 RIGHT (Name, 3) AS "SONDAN",
 UPPER (Name) AS "B�Y�K",
 LOWER (Name) AS "K���K",
 LTRIM (Name) AS "BA�TAN BEYAZ",--Metnin ba��ndaki beyaz karakterleri atmak i�in
 RTRIM (Name) AS "BA�TAN BEYAZ",--Metnin sonundaki beyaz karakterleri atmak i�in
 REPLACE (Name, 'kan', 'XXX') AS "DE����KL�K",
 REVERSE (Name) AS "TERSTEN"
FROM Student

SELECT AVG (Age) AS "Ortalama" FROM Student
SELECT SUM (Age) AS "Toplam Ya�" FROM Student
SELECT SUM (Age) AS "Standart Sapma" FROM Student
SELECT VAR (Age) AS "Varyans" FROM Student
SELECT MIN (Age) AS "En Az", MAX (Age) AS "En Fazla" FROM Student

SELECT Name, Surname FROM Student
WHERE Age = (SELECT MIN (Age) FROM Student)

SELECT COUNT (Age) AS "Ki�i Say�s�" FROM Student

SELECT COUNT (*) AS "Ki�i Say�s�" FROM Student

SELECT SQRT (16) AS "Karek�k�"
SELECT ABS (-15) AS "Mutlak De�er" 
SELECT ABS (15) AS "Mutlak De�er"
SELECT RAND ( ) AS "Rastgele Say�"
SELECT RAND ( ) * 100 AS "0-100 Aras� Say�"
SELECT POWER (3, 3) AS "�ss�"

SELECT CEILING (5.2) AS "Pozitif Yuvarlama"
SELECT CEILING (-7.9) AS "Negatif Yuvarlama"

SELECT FLOOR (5.2) AS "Pozitif Yuvarlama"
SELECT FLOOR (-7.9) AS "Negatif Yuvarlama"

SELECT ROUND (5.2, 0) AS "Yuvarlama"
SELECT ROUND (5.6, 0) AS "Yuvarlama"

SELECT Age, SIN (Age), COS (Age), TAN (Age), COT (Age) FROM Student
SELECT Age, EXP (Age) AS "�ss�", LOG (Age) AS "Logaritmas�" FROM Student

SELECT GETDATE ( ) AS "�imdi",
DATENAME (YEAR, GETDATE ( )) AS "Y�l",
DATENAME (MONTH, GETDATE ( )) AS "Ay",
DATENAME (DAY, GETDATE ( )) AS "G�n",
DATENAME (WEEK, GETDATE ( )) AS "Hafta",
DATENAME (WEEKDAY, GETDATE ( )) AS "Haftan�n G�n�",
DATENAME (HOUR, GETDATE ( )) AS "Saat",
DATENAME (MINUTE, GETDATE ( )) AS "Dakika",
DATENAME (SECOND, GETDATE ( )) AS "Saniye",
DATENAME (MILLISECOND, GETDATE ( )) AS "Milisaniye"


SELECT Name, TO_CHAR (CreateDAte, 'MM/YY') FROM Student

SELECT Name, CreateDate FROM Student
WHERE CreateDate = TO_DATE ('Ocak 1, 1980', 'MONTH DD, YYYY')

TO_NUMBER (katar, �bi�imlendirme ifadesi�)