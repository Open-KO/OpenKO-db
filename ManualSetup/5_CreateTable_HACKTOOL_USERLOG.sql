USE [KN_online]
GO

CREATE TABLE [HACKTOOL_USERLOG] (
	[strAccountID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strCharID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strHackToolName] varchar(512) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[tWriteTime] smalldatetime NOT NULL
)
GO
ALTER TABLE [HACKTOOL_USERLOG] ADD CONSTRAINT [DF_HACKTOOL_USERLOG_tWriteTime] DEFAULT getdate() FOR [tWriteTime]
GO
