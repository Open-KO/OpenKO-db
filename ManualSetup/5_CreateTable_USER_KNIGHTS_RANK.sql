USE [KN_online]
GO

CREATE TABLE [USER_KNIGHTS_RANK] (
	[shIndex] smallint NOT NULL,
	[strName] varchar(21) NOT NULL,
	[strElmoUserID] varchar(21),
	[strElmoKnightsName] varchar(21),
	[nElmoLoyalty] int,
	[strKarusUserID] varchar(21),
	[strKarusKnightsName] varchar(21),
	[nKarusLoyalty] int,
	[nMoney] int NOT NULL
	CONSTRAINT [PK_USER_KNIGHTS_RANK] PRIMARY KEY CLUSTERED ([shIndex])
)
GO
