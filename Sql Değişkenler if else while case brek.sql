--De�i�ken Tan�mlama

DECLARE @Adi varchar (20)
DECLARE @Numarasi int
DECLARE @Tarih smalldatetime

SELECT @Adi = 'Murat';
SELECT @Numarasi = 110403007;
SET @Tarih = '30.11.2011';

SELECT @Adi AS 'ADI', @Numarasi AS 'Numaras�' 
PRINT @Numarasi ;

-------------------if else
DECLARE @Ortalama int
SELECT @Ortalama = AVG(Age) FROM Student

IF (@Ortalama>22)
 BEGIN PRINT 'ya� ort 22 y�ksek'; END
ELSE
 BEGIN PRINT 'ya� ort 22 d���k';  END
 
-------------------switch case
SELECT Name,Surname,Age=
CASE
WHEN Age<=24 THEN '24 k���k'
WHEN Age>24  THEN '24 b�y�k'
END
FROM Student

-------------------while
DECLARE @Sayac int
SELECT @Sayac = 0
PRINT @Sayac

WHILE (@Sayac<10)
BEGIN
 IF (@Sayac>5)
  BEGIN 
    PRINT 'd�ng�den ��k�ld�'
	BREAK
	--CONTINUE
  END
 ELSE
  BEGIN
    SELECT @Sayac = @Sayac+1
    PRINT @Sayac
  END
END

