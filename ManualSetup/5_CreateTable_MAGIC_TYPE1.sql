USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE1] (
	[iNum] int NOT NULL,
	[Name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Description] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Type] tinyint NOT NULL,
	[HitRate] smallint NOT NULL,
	[Hit] smallint NOT NULL,
	[AddDamage] smallint NOT NULL,
	[Delay] tinyint NOT NULL,
	[ComboType] tinyint NOT NULL,
	[ComboCount] tinyint NOT NULL,
	[ComboDamage] smallint NOT NULL,
	[Range] smallint NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE1] PRIMARY KEY CLUSTERED ([iNum])
)
GO
