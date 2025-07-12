USE [KN_online]
GO

CREATE TABLE [MONSTER_CHALLENGE_SUMMON_LIST] (
	[sIndex] smallint NOT NULL,
	[bLevel] tinyint NOT NULL,
	[bStage] tinyint NOT NULL,
	[bStageLevel] tinyint NOT NULL,
	[sTime] smallint NOT NULL,
	[sSid] smallint NOT NULL,
	[sCount] smallint NOT NULL,
	[sPosX] smallint NOT NULL,
	[sPosZ] smallint NOT NULL,
	[bRange] tinyint NOT NULL
	CONSTRAINT [PK_MONSTER_CHALLENGE_SUMMON_LIST] PRIMARY KEY CLUSTERED ([sIndex])
)
GO
ALTER TABLE [MONSTER_CHALLENGE_SUMMON_LIST] ADD CONSTRAINT [DF_MONSTER_CHALLENGE_SUMMON_LIST_bStageLevel] DEFAULT 0 FOR [bStageLevel]
GO
