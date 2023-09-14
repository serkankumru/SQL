--Trigger’lar, veri deðiþiminin hemen ardýndan log dosyalar üzerinden otomatik olarak devreye giren özel bir Stored Procedure’dür.

AFTER Trigger --sadece tablolar üzerinde tanýmlanabilmektedir
INSTEAD OF Trigger --hem tablolar hem de view’lar üstündetanýmlanmaktadýr.



create table musteriler(
musteriNo int identity(1,1) not null,
Adi nvarchar(20),
Soyadi nvarchar(20)
)

create table urunler(
urunNo int identity(1,1) not null,
urunAdi nvarchar(255),
stok int
)

create table satislar(
fisNo int identity(1,1) not null,
musteriNo int,
urunNo int,
adet int,
tarih smalldatetime
)



insert into musteriler values('dilek','kumru')
insert into musteriler values('ebru','kumru')
insert into musteriler values('serkan','kumru')

insert into urunler values('test kitap 1',5)
insert into urunler values('test kitap 2',4)
insert into urunler values('test kitap 3',2)
insert into urunler values('test kitap 4',450)

create trigger satisgir_stokguncelle on satislar
for insert
as
declare @say int
select @say count(i.urunNo)
from urunler u inner join INSERTED i on u.urunNo = i.urunNo
where (i.adet>u.stok)
if @say <0
begin rollback transaction
raiserror ('girilen ürünlerden biri stoktan fazla',16,1)
end
else
update urunler set stok = u.stok-i.adet
from urunler u inner join INSERTED i on u.urunNo = i.urunNo

create trigger satissil_stokguncelle on satislar
for delete
as 
update urunler set stok = u.stok+i.adet
from urunler u inner join deleted i on u.urunNo = i.urunNo


select * from satislar
delete from satislar where fisNo=2