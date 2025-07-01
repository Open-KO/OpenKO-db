USE [KN_online]
GO

CREATE TABLE [KING_BALLOT_BOX] (
	[strAccountID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strCharID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[byNation] tinyint NOT NULL,
	[strCandidacyID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
