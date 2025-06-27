USE [KN_online]
GO

CREATE TABLE [K_NPC_ITEM] (
	[sIndex] smallint NOT NULL,
	[iItem01] int NOT NULL,
	[sPersent01] smallint,
	[iItem02] int,
	[sPersent02] smallint,
	[iItem03] int,
	[sPersent03] smallint,
	[iItem04] int,
	[sPersent04] smallint,
	[iItem05] int,
	[sPersent05] smallint
	CONSTRAINT [PK_K_NPC_ITEM] PRIMARY KEY CLUSTERED ([sIndex])
)
GO
