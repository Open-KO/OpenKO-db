USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE8] (
	[iNum] int NOT NULL,
	[Name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Description] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Target] tinyint NOT NULL,
	[Radius] smallint NOT NULL,
	[WarpType] tinyint NOT NULL,
	[ExpRecover] smallint NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE8] PRIMARY KEY CLUSTERED ([iNum])
)
GO
