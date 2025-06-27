USE [KN_online]
GO

CREATE TABLE [CURRENTUSER] (
	[nServerNo] int NOT NULL,
	[strServerIP] varchar(20) NOT NULL,
	[strAccountID] varchar(20) NOT NULL,
	[strCharID] varchar(20) NOT NULL,
	[strClientIP] varchar(20) NOT NULL
)
GO
