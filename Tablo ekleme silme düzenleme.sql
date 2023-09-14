--yeni database olu�turma
Create database TEST

--tablo olu�turma
CREATE TABLE PERSONEL_TANIMLARI
(
	per_RECno int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	per_Adi nvarchar(50) NULL,
	per_Soyadi nvarchar(50) NULL,
	per_TC nvarchar(11) NULL,
	per_Telefon nvarchar(11) NULL,
	per_DogumTarih datetime NULL
)

--silip ayn� tabloyu yeniden olu�turma
TRUNCATE TABLE PERSONEL_TANIMLARI

--ALTER
--kolon ekleme
ALTER TABLE PERSONEL_TANIMLARI ADD per_Departman nvarchar(MAX)
ALTER TABLE PERSONEL_TANIMLARI ADD per_Brut_Maas int
ALTER TABLE PERSONEL_TANIMLARI ADD per_Adres nvarchar(MAX)--MAX 4000 karakter s�n�r� vard�r
--kolon veri tipi de�i�tirme
ALTER TABLE PERSONEL_TANIMLARI ALTER COLUMN  per_Adres  nvarchar(500)
--kolon veri silme
ALTER TABLE PERSONEL_TANIMLARI DROP COLUMN  per_Adres

--se�ili tablodaki kolon bilgilerini almak
SELECT * FROM INFORMATION_SCHEMA.Columns WHERE TABLE_NAME = 'PERSONEL_TANIMLARI'
--t�m tablolardaki s�tunlar
SELECT * FROM INFORMATION_SCHEMA.Columns

--tablo de�er eklemek
INSERT INTO PERSONEL_TANIMLARI(
	[per_Adi],
    [per_Soyadi],
    [per_TC],
    [per_Telefon],
    [per_DogumTarih])
VALUES(
	'serkan', --<per_Adi, nvarchar(50),>
    'kumru', --<per_Soyadi, nvarchar(50),>
    '12345', --<per_TC, nvarchar(11),>
    '12345', --<per_Telefon, nvarchar(11),>
    '19970509'); --<per_DogumTarih, datetime,>) y�l g�n ay yaz�lmak zorunda

--tablo de�er d�zenlemek
UPDATE PERSONEL_TANIMLARI  SET 
	[per_Adi] = 'Ali',
	[per_Soyadi]   = 'Algan'
WHERE per_RECno  = 2

--tabloyu komple silme
DROP TABLE PERSONEL_TANIMLARI

--tablodan veri silmek
DELETE from PERSONEL_TANIMLARI WHERE per_RECno = 3
--tablodan ilk 5 veriyi silmek
DELETE top(5) from PERSONEL_TANIMLARI where [per_Adi] = 'serkan'

--WHERE
SELECT * FROM PERSONEL_TANIMLARI
where per_Departman = 'Muhasebe' and per_Brut_Maas < 3500

SELECT * FROM PERSONEL_TANIMLARI
where per_Departman = 'Muhasebe' or per_Brut_Maas > 3500

SELECT * FROM PERSONEL_TANIMLARI
where  per_Brut_Maas in ( 3500 , 4500 )

SELECT * FROM PERSONEL_TANIMLARI
where  per_Brut_Maas not in ( 5000 , 4500 )



--i�inde mb veya ag �e�en benzeyen alanlar
SELECT  *  FROM [dbo].[PERSONEL_TANIMLARI]
WHERE per_Departman  like  '[MB]%'

SELECT  *  FROM [dbo].[PERSONEL_TANIMLARI]
WHERE per_Departman  like  '[AG]%'

--order by
SELECT  *  FROM [dbo].[PERSONEL_TANIMLARI]
order by per_RECno
--9-0 veya z-a
SELECT  *  FROM [dbo].[PERSONEL_TANIMLARI]
order by per_RECno DESC
--0-9 veya a-z
SELECT  *  FROM [dbo].[PERSONEL_TANIMLARI]
order by per_RECno ASC

--s�ralama
SELECT
	[per_RECno] AS KAYITNO
	,[per_Adi] AS ADI
	,[per_Soyadi] AS SOYADI
	,per_Adi + ' ' + per_Soyadi AS AD_SOYAD
	,[per_TC] AS TC
	,[per_Telefon] AS TELEFON
	,[per_DogumTarih] AS DO�UM_TAR
	,[per_Brut_Maas] AS MAAS
	,[per_Departman] AS DEPARTMAN
FROM [dbo].[PERSONEL_TANIMLARI]
ORDER BY per_Departman asc

--grupland�rma
SELECT
	per_Adi + ' ' + per_Soyadi AS AD_SOYAD,
	per_Departman AS DEPARTMAN
FROM PERSONEL_TANIMLARI
WHERE per_Departman = 'Muhasebe'
GROUP BY per_Departman
ORDER BY per_RECno asc





