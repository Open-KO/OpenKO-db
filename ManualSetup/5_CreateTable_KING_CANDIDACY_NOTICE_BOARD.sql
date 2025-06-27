USE [KN_online]
GO

CREATE TABLE [KING_CANDIDACY_NOTICE_BOARD] (
	[strUserID] varchar(21) NOT NULL,
	[byNation] tinyint NOT NULL,
	[sNoticeLen] smallint NOT NULL,
	[strNotice] varbinary(1024) NOT NULL
	CONSTRAINT [PK_KING_CANDIDACY_NOTICE_BOARD] PRIMARY KEY CLUSTERED ([strUserID])
)
GO
