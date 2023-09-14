
BEGIN TRANSACTION
 Transaction komutlarý
COMMIT TRANSACTION / ROLLBACK


create table hesaplar(
Hesapno char(10) primary key not null,
Adi Varchar(50),
Soyadi Varchar(50),
Sube int,
Bakiye money
)

insert into hesaplar values('0000000020','serkan','kumru',750,100000)
insert into hesaplar values('0000000040','ali','algan',750,200000)

select * from hesaplar

Create procedure havale(@aliciHesap char(10),@gonderenHesap char(10),@miktar money)
as
 begin try
  begin transaction

    update hesaplar
	set Bakiye=Bakiye-@miktar
	where Hesapno = @gonderenHesap

	update hesaplar
	set Bakiye = Bakiye+@miktar
	where Hesapno = @aliciHesap
	commit
 end try
 begin catch
  print @@error + 'kodlu hatadan havale yapýlamadý.'
  rollback
 end catch

select * from hesaplar
exec havale '0000000020','0000000040',100000
select * from hesaplar