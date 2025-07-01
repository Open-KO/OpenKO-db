USE [KN_online]
GO

CREATE TABLE [CURRENTUSER] (
	[nServerNo] int NOT NULL,
	[strServerIP] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strAccountID] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strCharID] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strClientIP] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
