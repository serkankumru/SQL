--ekleme
INSERT INTO kategoriler (kategoriID, kategoriAdi)
VALUES (5, 'Bahçe Çiçekleri')
--kolonsuz ekleme
INSERT INTO kategoriler
VALUES (5, 'Bahçe Çiçekleri')
--özel ekleme
INSERT INTO siparisler (siparisID, müsteriID, calýsanID, siparisTarihi)
VALUES (16, 7, 4, GETDATE())
--tablodan gelen veriileri baþka tabloya ekleme
INSERT INTO secilenMusteri (musteriID, adi, soyadi)
SELECT musteriID, adi, soyadi
FROM musteriler
WHERE ilce ='Çankaya'


--güncelleme
UPDATE musteriler
SET il='Ýstanbul', ilce = 'Üsküdar'
WHERE (adi='Ali' AND soyadi='Arslan')
--maaþ zam yapma
UPDATE personel SET ucret = ucret*1.20

--tablo silme
DELETE FROM secilenMüsteri
DELETE FROM musteriler
WHERE (adi='Ali' AND soyadi='Arslan')
--ili ankara olanlarý þilme
DELETE FROM musteriler
WHERE il ='Ankara'
--imalat bölümündeki personelleri silme
DELETE FROM personel
WHERE bolumID = 
(SELECT bolumID FROM bolum WHERE bolumAdi = 'ÝMALAT')



USE OgrenciTakip2
GO
SELECT * FROM Student
GO
SELECT * FROM ClassRoom