USE [KN_online]
GO

CREATE TABLE [MONSTER_SUMMON_LIST] (
	[sSid] smallint NOT NULL,
	[strName] varchar(31) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[sLevel] smallint NOT NULL,
	[sProbability] smallint NOT NULL,
	[bType] tinyint NOT NULL
)
GO
ALTER TABLE [MONSTER_SUMMON_LIST] ADD CONSTRAINT [DF_MONSTER_SUMMON_LIST_bType] DEFAULT 0 FOR [bType]
GO
