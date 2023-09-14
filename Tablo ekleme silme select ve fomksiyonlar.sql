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

SELECT * FROM Student --Bbütün alanlar

SELECT Name, Surname FROM Student --Böðrencilerin sadece Adý ve Soyadý

SELECT * FROM Student, ClassRoom --öðrenciler ve bölümler

SELECT DISTINCT Name, Surname FROM Student--tekrarý önler

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
ORDER BY Age DESC,Id  ASC--ASC a-z DESC z-a  yaþa göre azalan id ye göre artan



SELECT Name,
 LEN (Name) AS "UZUNLUK",
 LEFT (Name, 3) AS "BAÞTAN",
 RIGHT (Name, 3) AS "SONDAN",
 UPPER (Name) AS "BÜYÜK",
 LOWER (Name) AS "KÜÇÜK",
 LTRIM (Name) AS "BAÞTAN BEYAZ",--Metnin baþýndaki beyaz karakterleri atmak için
 RTRIM (Name) AS "BAÞTAN BEYAZ",--Metnin sonundaki beyaz karakterleri atmak için
 REPLACE (Name, 'kan', 'XXX') AS "DEÐÝÞÝKLÝK",
 REVERSE (Name) AS "TERSTEN"
FROM Student

SELECT AVG (Age) AS "Ortalama" FROM Student
SELECT SUM (Age) AS "Toplam Yaþ" FROM Student
SELECT SUM (Age) AS "Standart Sapma" FROM Student
SELECT VAR (Age) AS "Varyans" FROM Student
SELECT MIN (Age) AS "En Az", MAX (Age) AS "En Fazla" FROM Student

SELECT Name, Surname FROM Student
WHERE Age = (SELECT MIN (Age) FROM Student)

SELECT COUNT (Age) AS "Kiþi Sayýsý" FROM Student

SELECT COUNT (*) AS "Kiþi Sayýsý" FROM Student

SELECT SQRT (16) AS "Karekökü"
SELECT ABS (-15) AS "Mutlak Deðer" 
SELECT ABS (15) AS "Mutlak Deðer"
SELECT RAND ( ) AS "Rastgele Sayý"
SELECT RAND ( ) * 100 AS "0-100 Arasý Sayý"
SELECT POWER (3, 3) AS "Üssü"

SELECT CEILING (5.2) AS "Pozitif Yuvarlama"
SELECT CEILING (-7.9) AS "Negatif Yuvarlama"

SELECT FLOOR (5.2) AS "Pozitif Yuvarlama"
SELECT FLOOR (-7.9) AS "Negatif Yuvarlama"

SELECT ROUND (5.2, 0) AS "Yuvarlama"
SELECT ROUND (5.6, 0) AS "Yuvarlama"

SELECT Age, SIN (Age), COS (Age), TAN (Age), COT (Age) FROM Student
SELECT Age, EXP (Age) AS "Üssü", LOG (Age) AS "Logaritmasý" FROM Student

SELECT GETDATE ( ) AS "Þimdi",
DATENAME (YEAR, GETDATE ( )) AS "Yýl",
DATENAME (MONTH, GETDATE ( )) AS "Ay",
DATENAME (DAY, GETDATE ( )) AS "Gün",
DATENAME (WEEK, GETDATE ( )) AS "Hafta",
DATENAME (WEEKDAY, GETDATE ( )) AS "Haftanýn Günü",
DATENAME (HOUR, GETDATE ( )) AS "Saat",
DATENAME (MINUTE, GETDATE ( )) AS "Dakika",
DATENAME (SECOND, GETDATE ( )) AS "Saniye",
DATENAME (MILLISECOND, GETDATE ( )) AS "Milisaniye"


SELECT Name, TO_CHAR (CreateDAte, 'MM/YY') FROM Student

SELECT Name, CreateDate FROM Student
WHERE CreateDate = TO_DATE ('Ocak 1, 1980', 'MONTH DD, YYYY')

TO_NUMBER (katar, ‘biçimlendirme ifadesi’)