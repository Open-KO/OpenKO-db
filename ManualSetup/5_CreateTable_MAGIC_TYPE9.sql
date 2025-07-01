USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE9] (
	[iNum] int NOT NULL,
	[Name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Description] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[ValidGroup] tinyint NOT NULL,
	[NationChange] tinyint NOT NULL,
	[MonsterNum] smallint NOT NULL,
	[TargetChange] tinyint NOT NULL,
	[StateChange] tinyint NOT NULL,
	[Radius] smallint NOT NULL,
	[Hitrate] smallint NOT NULL,
	[Duration] smallint NOT NULL,
	[AddDamage] smallint NOT NULL,
	[Vision] smallint NOT NULL,
	[NeedItem] int NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE9] PRIMARY KEY CLUSTERED ([iNum])
)
GO
