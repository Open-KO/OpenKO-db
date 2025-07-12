USE [KN_online]
GO

CREATE TABLE [MONSTER_CHALLENGE] (
	[sIndex] smallint NOT NULL,
	[bStartTime1] tinyint NOT NULL,
	[bStartTime2] tinyint NOT NULL,
	[bStartTime3] tinyint NOT NULL,
	[bLevelMin] tinyint NOT NULL,
	[bLevelMax] tinyint NOT NULL
	CONSTRAINT [PK_MONSTER_CHALLENGE] PRIMARY KEY CLUSTERED ([sIndex])
)
GO
