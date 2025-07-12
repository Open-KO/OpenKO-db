USE [KN_online]
GO

CREATE TABLE [K_MONSTER_ITEM] (
	[sIndex] smallint NOT NULL,
	[iItem01] int NOT NULL,
	[sPersent01] smallint NOT NULL,
	[iItem02] int NOT NULL,
	[sPersent02] smallint NOT NULL,
	[iItem03] int NOT NULL,
	[sPersent03] smallint NOT NULL,
	[iItem04] int NOT NULL,
	[sPersent04] smallint NOT NULL,
	[iItem05] int NOT NULL,
	[sPersent05] smallint NOT NULL
	CONSTRAINT [PK_K_MONSTER_ITEM] PRIMARY KEY CLUSTERED ([sIndex])
)
GO
