USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE3] (
	[iNum] int NOT NULL,
	[Name] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Description] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[Radius] tinyint NOT NULL,
	[Angle] smallint NOT NULL,
	[DirectType] tinyint NOT NULL,
	[FirstDamage] smallint NOT NULL,
	[EndDamage] smallint NOT NULL,
	[TimeDamage] smallint NOT NULL,
	[Duration] tinyint NOT NULL,
	[Attribute] tinyint NOT NULL
	CONSTRAINT [PK_MAGIC_TYPE3] PRIMARY KEY CLUSTERED ([iNum])
)
GO
