USE [KN_online]
GO

CREATE TABLE [EVENT] (
	[ZoneNum] tinyint NOT NULL,
	[EventNum] smallint NOT NULL,
	[Type] tinyint NOT NULL,
	[Cond1] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Cond2] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Cond3] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Cond4] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Cond5] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Exec1] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Exec2] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Exec3] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Exec4] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Exec5] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS
)
GO
