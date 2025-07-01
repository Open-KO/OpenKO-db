USE [KN_online]
GO

CREATE TABLE [TB_USER] (
	[strAccountID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strPasswd] varchar(13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strSocNo] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strEmail] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strAuthority] tinyint NOT NULL,
	[PremiumExpire] datetime NOT NULL
	CONSTRAINT [PK_TB_USER] PRIMARY KEY CLUSTERED ([strAccountID])
)
GO
ALTER TABLE [TB_USER] ADD CONSTRAINT [DF_TB_USER_strSocNo] DEFAULT '' FOR [strSocNo]
GO
ALTER TABLE [TB_USER] ADD CONSTRAINT [DF_TB_USER_strEmail] DEFAULT '' FOR [strEmail]
GO
ALTER TABLE [TB_USER] ADD CONSTRAINT [DF_TB_USER_strAuthority] DEFAULT 1 FOR [strAuthority]
GO
ALTER TABLE [TB_USER] ADD CONSTRAINT [DF_TB_USER_PremiumExpire] DEFAULT getdate()+(3) FOR [PremiumExpire]
GO
