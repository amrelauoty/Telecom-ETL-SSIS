if exists(select * from sys.tables where name = 'err_source_output')
	drop table err_source_output

CREATE TABLE err_source_output (
	id int identity(1,1) primary key,
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int
)