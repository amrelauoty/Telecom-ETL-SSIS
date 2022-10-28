use Telecom
go
if exists(select * from sys.tables where name = 'err_destination_output')
	drop table err_destination_output
go
CREATE TABLE err_destination_output (
    [id] int,
    [imsi] varchar(9),
    [imei] varchar(14),
    [cell] int,
    [lac] int,
    [event_type] varchar(1),
    [event_ts] datetime,
	[tac] varchar(8),
	[snr] varchar(6),
    [ErrorCode] int,
    [ErrorColumn] int
)