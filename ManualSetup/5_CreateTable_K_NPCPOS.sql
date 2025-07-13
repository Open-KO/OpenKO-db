USE [KN_online]
GO

CREATE TABLE [K_NPCPOS] (
	[ZoneID] smallint NOT NULL,
	[NpcID] int NOT NULL,
	[ActType] tinyint NOT NULL,
	[RegenType] tinyint NOT NULL,
	[DungeonFamily] tinyint NOT NULL,
	[SpecialType] tinyint NOT NULL,
	[TrapNumber] tinyint NOT NULL,
	[LeftX] int NOT NULL,
	[TopZ] int NOT NULL,
	[RightX] int NOT NULL,
	[BottomZ] int NOT NULL,
	[LimitMinZ] int NOT NULL,
	[LimitMinX] int NOT NULL,
	[LimitMaxX] int NOT NULL,
	[LimitMaxZ] int NOT NULL,
	[NumNPC] tinyint NOT NULL,
	[RegTime] smallint NOT NULL,
	[byDirection] int NOT NULL,
	[DotCnt] tinyint NOT NULL,
	[path] text COLLATE SQL_Latin1_General_CP1_CI_AS
)
GO
