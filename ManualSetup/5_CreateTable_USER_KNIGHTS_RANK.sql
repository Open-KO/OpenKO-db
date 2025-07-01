USE [KN_online]
GO

CREATE TABLE [USER_KNIGHTS_RANK] (
	[shIndex] smallint NOT NULL,
	[strName] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strElmoUserID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strElmoKnightsName] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[nElmoLoyalty] int,
	[strKarusUserID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strKarusKnightsName] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[nKarusLoyalty] int,
	[nMoney] int NOT NULL
	CONSTRAINT [PK_USER_KNIGHTS_RANK] PRIMARY KEY CLUSTERED ([shIndex])
)
GO
