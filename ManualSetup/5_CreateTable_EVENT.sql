USE [KN_online]
GO

CREATE TABLE [EVENT] (
	[ZoneNum] tinyint NOT NULL,
	[EventNum] smallint NOT NULL,
	[Type] tinyint NOT NULL,
	[Cond1] varchar(128),
	[Cond2] varchar(128),
	[Cond3] varchar(128),
	[Cond4] varchar(128),
	[Cond5] varchar(128),
	[Exec1] varchar(128),
	[Exec2] varchar(128),
	[Exec3] varchar(128),
	[Exec4] varchar(128),
	[Exec5] varchar(128)
)
GO
