USE [KN_online]
GO

CREATE TABLE [HERO_USER] (
	[shIndex] smallint NOT NULL,
	[strUserID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strNation] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strClass] varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strAchievement] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS
)
GO
