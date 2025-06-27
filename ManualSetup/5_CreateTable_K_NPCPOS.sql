USE [KN_online]
GO

CREATE TABLE [K_NPCPOS] (
	[ZoneID] smallint,
	[NpcID] int,
	[ActType] tinyint,
	[RegenType] tinyint,
	[DungeonFamily] tinyint,
	[SpecialType] tinyint,
	[TrapNumber] tinyint,
	[LeftX] int,
	[TopZ] int,
	[RightX] int,
	[BottomZ] int,
	[LimitMinZ] int,
	[LimitMinX] int,
	[LimitMaxX] int,
	[LimitMaxZ] int,
	[NumNPC] tinyint,
	[RegTime] smallint,
	[byDirection] int,
	[DotCnt] tinyint,
	[path] text
)
GO
