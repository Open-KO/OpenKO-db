USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE2] (
	[iNum] int NOT NULL,
	[Name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Description] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[HitType] tinyint NOT NULL,
	[HitRate] smallint NOT NULL,
	[AddDamage] smallint NOT NULL,
	[AddRange] smallint NOT NULL,
	[NeedArrow] tinyint NOT NULL,
	[AddDamagePlus] smallint
	CONSTRAINT [PK_MAGIC_TYPE2] PRIMARY KEY CLUSTERED ([iNum])
)
GO
