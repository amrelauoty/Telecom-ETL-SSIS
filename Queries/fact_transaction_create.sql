Use Telecom
go
if exists(select * from sys.tables where name='fact_transactions')
	drop table fact_transactions
go
create table fact_transactions(
     id int identity(1,1) primary key, --surrogate key
	 transaction_id  int not null,
	 imsi varchar(9) not null,
	 subscriber_id int,
	 tac varchar(8) not null,
	 snr varchar(6) not null,
	 imei varchar(14),
	 cell int not null,
	 lac int not null,
	 event_type varchar(2) null,
	 event_ts datetime not null,
	 audit_id int not null default (-1)
)