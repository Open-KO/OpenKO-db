USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE5] (
	[iNum] int NOT NULL,
	[Name] varchar(50),
	[Description] varchar(100),
	[Type] tinyint NOT NULL,
	[ExpRecover] tinyint NOT NULL,
	[NeedStone] smallint NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE5] PRIMARY KEY CLUSTERED ([iNum])
)
GO
