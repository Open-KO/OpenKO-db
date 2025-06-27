USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE6] (
	[iNum] int NOT NULL,
	[Name] varchar(50) NOT NULL,
	[Description] varchar(100),
	[Size] smallint NOT NULL,
	[TransformID] smallint NOT NULL,
	[Duration] smallint NOT NULL,
	[MaxHp] smallint NOT NULL,
	[MaxMp] smallint NOT NULL,
	[Speed] tinyint NOT NULL,
	[AttackSpeed] smallint NOT NULL,
	[TotalHit] smallint NOT NULL,
	[TotalAc] smallint NOT NULL,
	[TotalHitRate] smallint NOT NULL,
	[TotalEvasionRate] smallint NOT NULL,
	[TotalFireR] smallint NOT NULL,
	[TotalColdR] smallint NOT NULL,
	[TotalLightningR] smallint NOT NULL,
	[TotalMagicR] smallint NOT NULL,
	[TotalDiseaseR] smallint NOT NULL,
	[TotalPoisonR] smallint NOT NULL,
	[Class] smallint NOT NULL,
	[UserSkillUse] tinyint NOT NULL,
	[NeedItem] tinyint NOT NULL,
	[SkillSuccessRate] tinyint NOT NULL,
	[MonsterFriendly] tinyint NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE6] PRIMARY KEY CLUSTERED ([iNum])
)
GO
