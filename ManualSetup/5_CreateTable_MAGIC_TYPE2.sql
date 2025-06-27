USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE2] (
	[iNum] int NOT NULL,
	[Name] varchar(50),
	[Description] varchar(100),
	[HitType] tinyint NOT NULL,
	[HitRate] smallint NOT NULL,
	[AddDamage] smallint NOT NULL,
	[AddRange] smallint NOT NULL,
	[NeedArrow] tinyint NOT NULL,
	[AddDamagePlus] smallint
	CONSTRAINT [PK_MAGIC_TYPE2] PRIMARY KEY CLUSTERED ([iNum])
)
GO
