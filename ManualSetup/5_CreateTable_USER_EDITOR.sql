USE [KN_online]
GO

CREATE TABLE [USER_EDITOR] (
	[strCharID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strAccountID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOpID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOpIP] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldUserValue] char(600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewUserValue] char(600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldUserSkill] char(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewUserSkill] char(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldUserItem] char(400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewUserItem] char(400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldWHValue] char(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewWHValue] char(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strOldWHItem] char(1600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strNewWHItem] char(1600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EditorTime] smalldatetime NOT NULL
)
GO
ALTER TABLE [USER_EDITOR] ADD CONSTRAINT [DF_USER_EDITOR_EditorTime] DEFAULT getdate() FOR [EditorTime]
GO
