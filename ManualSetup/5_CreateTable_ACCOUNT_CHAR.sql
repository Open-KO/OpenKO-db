USE [KN_online]
GO

CREATE TABLE [ACCOUNT_CHAR] (
	[strAccountID] varchar(21) NOT NULL,
	[bNation] tinyint NOT NULL,
	[bCharNum] tinyint NOT NULL,
	[strCharID1] varchar(21),
	[strCharID2] varchar(21),
	[strCharID3] varchar(21)
	CONSTRAINT [PK_ACCOUNT_CHAR] PRIMARY KEY CLUSTERED ([strAccountID])
)
GO
ALTER TABLE [ACCOUNT_CHAR] ADD CONSTRAINT [DF_ACCOUNT_CHAR_bCharNum] DEFAULT 0 FOR [bCharNum]
GO
