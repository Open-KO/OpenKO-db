USE [KN_online]
GO

CREATE TABLE [COEFFICIENT] (
	[sClass] smallint NOT NULL,
	[ShortSword] float NOT NULL,
	[Sword] float NOT NULL,
	[Axe] float NOT NULL,
	[Club] float NOT NULL,
	[Spear] float NOT NULL,
	[Pole] float NOT NULL,
	[Staff] float NOT NULL,
	[Bow] float,
	[Hp] float NOT NULL,
	[Mp] float NOT NULL,
	[Sp] float NOT NULL,
	[Ac] float NOT NULL,
	[Hitrate] float NOT NULL,
	[Evasionrate] float NOT NULL
	CONSTRAINT [PK_COEFFICIENT] PRIMARY KEY CLUSTERED ([sClass])
)
GO
