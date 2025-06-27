USE [KN_online]
GO

CREATE TABLE [MAGIC_TYPE3] (
	[iNum] int NOT NULL,
	[Name] varchar(50),
	[Description] varchar(100),
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
