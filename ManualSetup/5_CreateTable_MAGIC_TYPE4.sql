USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE4] (
	[iNum] int NOT NULL,
	[Name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Description] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[BuffType] tinyint NOT NULL,
	[Radius] tinyint NOT NULL,
	[Duration] smallint NOT NULL,
	[AttackSpeed] tinyint NOT NULL,
	[Speed] tinyint NOT NULL,
	[AC] smallint NOT NULL,
	[ACPct] smallint NOT NULL,
	[Attack] tinyint NOT NULL,
	[MagicAttack] tinyint NOT NULL,
	[MaxHP] smallint NOT NULL,
	[MaxHpPct] smallint NOT NULL,
	[MaxMP] smallint NOT NULL,
	[MaxMpPct] smallint NOT NULL,
	[HitRate] tinyint NOT NULL,
	[AvoidRate] smallint NOT NULL,
	[Str] smallint NOT NULL,
	[Sta] smallint NOT NULL,
	[Dex] smallint NOT NULL,
	[Intel] smallint NOT NULL,
	[Cha] smallint NOT NULL,
	[FireR] tinyint NOT NULL,
	[ColdR] tinyint NOT NULL,
	[LightningR] tinyint NOT NULL,
	[MagicR] tinyint NOT NULL,
	[DiseaseR] tinyint NOT NULL,
	[PoisonR] tinyint NOT NULL,
	[ExpPct] tinyint NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE4] PRIMARY KEY CLUSTERED ([iNum])
)
GO
