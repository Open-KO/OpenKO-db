USE [KN_online]
GO

CREATE TABLE [HACKTOOL_USERLOG] (
	[strAccountID] varchar(21) NOT NULL,
	[strCharID] varchar(21) NOT NULL,
	[strHackToolName] varchar(512),
	[tWriteTime] smalldatetime NOT NULL
)
GO
ALTER TABLE [HACKTOOL_USERLOG] ADD CONSTRAINT [DF_HACKTOOL_USERLOG_tWriteTime] DEFAULT getdate() FOR [tWriteTime]
GO
