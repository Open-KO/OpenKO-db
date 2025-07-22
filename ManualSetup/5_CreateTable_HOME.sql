USE [KN_online]
GO

CREATE TABLE [HOME] (
	[Nation] tinyint NOT NULL,
	[ElmoZoneX] int NOT NULL,
	[ElmoZoneZ] int NOT NULL,
	[ElmoZoneLX] tinyint NOT NULL,
	[ElmoZoneLZ] tinyint NOT NULL,
	[KarusZoneX] int NOT NULL,
	[KarusZoneZ] int NOT NULL,
	[KarusZoneLX] tinyint NOT NULL,
	[KarusZoneLZ] tinyint NOT NULL,
	[FreeZoneX] int NOT NULL,
	[FreeZoneZ] int NOT NULL,
	[FreeZoneLX] tinyint NOT NULL,
	[FreeZoneLZ] tinyint NOT NULL,
	[BattleZoneX] int NOT NULL,
	[BattleZoneZ] int NOT NULL,
	[BattleZoneLX] tinyint NOT NULL,
	[BattleZoneLZ] tinyint NOT NULL,
	[BattleZone2X] int NOT NULL,
	[BattleZone2Z] int NOT NULL,
	[BattleZone2LX] tinyint NOT NULL,
	[BattleZone2LZ] tinyint NOT NULL
	CONSTRAINT [PK_HOME] PRIMARY KEY CLUSTERED ([Nation])
)
GO
