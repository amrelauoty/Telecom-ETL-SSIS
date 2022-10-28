if exists(select * from sys.databases where name = 'Telecom')
	drop database Telecom

create database Telecom