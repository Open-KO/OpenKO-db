USE [KN_online]
GO

CREATE TABLE [FRIEND_LIST] (
	[strUserID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strFriend1] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend2] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend3] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend4] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend5] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend6] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend7] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend8] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend9] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend10] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend11] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend12] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend13] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend14] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend15] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend16] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend17] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend18] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend19] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend20] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend21] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend22] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend23] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strFriend24] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS
	CONSTRAINT [PK_FRIEND_LIST] PRIMARY KEY CLUSTERED ([strUserID])
)
GO
