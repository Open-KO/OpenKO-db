USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE5] (
	[iNum] int NOT NULL,
	[Name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Description] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Type] tinyint NOT NULL,
	[ExpRecover] tinyint NOT NULL,
	[NeedStone] smallint NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE5] PRIMARY KEY CLUSTERED ([iNum])
)
GO
