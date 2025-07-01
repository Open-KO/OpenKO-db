USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE7] (
	[nIndex] int NOT NULL,
	[strName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strNote] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[byValidGroup] tinyint NOT NULL,
	[byNatoinChange] tinyint NOT NULL,
	[shMonsterNum] smallint NOT NULL,
	[byTargetChange] tinyint NOT NULL,
	[byStateChange] tinyint NOT NULL,
	[byRadius] tinyint NOT NULL,
	[shHitrate] smallint NOT NULL,
	[shDuration] smallint NOT NULL,
	[shDamage] smallint NOT NULL,
	[byVisoin] tinyint NOT NULL,
	[nNeedItem] int NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE7] PRIMARY KEY CLUSTERED ([nIndex])
)
GO
