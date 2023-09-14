--Deðiþken Tanýmlama

DECLARE @Adi varchar (20)
DECLARE @Numarasi int
DECLARE @Tarih smalldatetime

SELECT @Adi = 'Murat';
SELECT @Numarasi = 110403007;
SET @Tarih = '30.11.2011';

SELECT @Adi AS 'ADI', @Numarasi AS 'Numarasý' 
PRINT @Numarasi ;

-------------------if else
DECLARE @Ortalama int
SELECT @Ortalama = AVG(Age) FROM Student

IF (@Ortalama>22)
 BEGIN PRINT 'yaþ ort 22 yüksek'; END
ELSE
 BEGIN PRINT 'yaþ ort 22 düþük';  END
 
-------------------switch case
SELECT Name,Surname,Age=
CASE
WHEN Age<=24 THEN '24 küçük'
WHEN Age>24  THEN '24 büyük'
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
    PRINT 'döngüden çýkýldý'
	BREAK
	--CONTINUE
  END
 ELSE
  BEGIN
    SELECT @Sayac = @Sayac+1
    PRINT @Sayac
  END
END

