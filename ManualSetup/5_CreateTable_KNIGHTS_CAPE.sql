USE [KN_online]
GO

CREATE TABLE [KNIGHTS_CAPE] (
	[sCapeIndex] smallint NOT NULL,
	[strName] varchar(30) NOT NULL,
	[nBuyPrice] int NOT NULL,
	[nDuration] int NOT NULL,
	[byGrade] tinyint NOT NULL
	CONSTRAINT [PK_KNIGHTS_CAPE] PRIMARY KEY CLUSTERED ([sCapeIndex])
)
GO
