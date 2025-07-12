USE [KN_online]
GO

CREATE TABLE [KING_ELECTION_LIST] (
	[byType] tinyint NOT NULL,
	[byNation] tinyint NOT NULL,
	[nKnights] smallint NOT NULL,
	[strName] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[nMoney] int NOT NULL
)
GO
