USE [KN_online]
GO

CREATE TABLE [USER_EDITOR] (
	[strCharID] varchar(21) NOT NULL,
	[strAccountID] varchar(21) NOT NULL,
	[strOpID] varchar(21) NOT NULL,
	[strOpIP] varchar(21) NOT NULL,
	[strOldUserValue] char(600) NOT NULL,
	[strNewUserValue] char(600) NOT NULL,
	[strOldUserSkill] char(10) NOT NULL,
	[strNewUserSkill] char(10) NOT NULL,
	[strOldUserItem] char(400) NOT NULL,
	[strNewUserItem] char(400) NOT NULL,
	[strOldWHValue] char(100) NOT NULL,
	[strNewWHValue] char(100) NOT NULL,
	[strOldWHItem] char(1600) NOT NULL,
	[strNewWHItem] char(1600) NOT NULL,
	[EditorTime] smalldatetime NOT NULL
)
GO
ALTER TABLE [USER_EDITOR] ADD CONSTRAINT [DF_USER_EDITOR_EditorTime] DEFAULT getdate() FOR [EditorTime]
GO
