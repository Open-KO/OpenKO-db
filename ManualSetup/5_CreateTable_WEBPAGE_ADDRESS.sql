USE [KN_online]
GO

CREATE TABLE [WEBPAGE_ADDRESS] (
	[nIndex] int NOT NULL,
	[strWebPageAddress] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS
	CONSTRAINT [PK_WEBPAGE_ADDRESS] PRIMARY KEY CLUSTERED ([nIndex])
)
GO
