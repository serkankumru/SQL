--ekleme
INSERT INTO kategoriler (kategoriID, kategoriAdi)
VALUES (5, 'Bah�e �i�ekleri')
--kolonsuz ekleme
INSERT INTO kategoriler
VALUES (5, 'Bah�e �i�ekleri')
--�zel ekleme
INSERT INTO siparisler (siparisID, m�steriID, cal�sanID, siparisTarihi)
VALUES (16, 7, 4, GETDATE())
--tablodan gelen veriileri ba�ka tabloya ekleme
INSERT INTO secilenMusteri (musteriID, adi, soyadi)
SELECT musteriID, adi, soyadi
FROM musteriler
WHERE ilce ='�ankaya'


--g�ncelleme
UPDATE musteriler
SET il='�stanbul', ilce = '�sk�dar'
WHERE (adi='Ali' AND soyadi='Arslan')
--maa� zam yapma
UPDATE personel SET ucret = ucret*1.20

--tablo silme
DELETE FROM secilenM�steri
DELETE FROM musteriler
WHERE (adi='Ali' AND soyadi='Arslan')
--ili ankara olanlar� �ilme
DELETE FROM musteriler
WHERE il ='Ankara'
--imalat b�l�m�ndeki personelleri silme
DELETE FROM personel
WHERE bolumID = 
(SELECT bolumID FROM bolum WHERE bolumAdi = '�MALAT')



USE OgrenciTakip2
GO
SELECT * FROM Student
GO
SELECT * FROM ClassRoom