USE [KN_online]
GO

CREATE TABLE [KNIGHTS_RATING] (
	[nRank] int NOT NULL,
	[shIndex] smallint,
	[strName] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[nPoints] int
	CONSTRAINT [PK_KNIGHTS_RATING] PRIMARY KEY CLUSTERED ([nRank])
)
GO
