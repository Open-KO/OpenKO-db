USE [KN_online]
GO

CREATE TABLE [KING_SYSTEM] (
	[byNation] tinyint NOT NULL,
	[byType] tinyint NOT NULL,
	[sYear] smallint NOT NULL,
	[byMonth] tinyint NOT NULL,
	[byDay] tinyint NOT NULL,
	[byHour] tinyint NOT NULL,
	[byMinute] tinyint NOT NULL,
	[byImType] tinyint NOT NULL,
	[sImYear] smallint NOT NULL,
	[byImMonth] tinyint NOT NULL,
	[byImDay] tinyint NOT NULL,
	[byImHour] tinyint NOT NULL,
	[byImMinute] tinyint NOT NULL,
	[byNoahEvent] tinyint NOT NULL,
	[byNoahEvent_Day] tinyint NOT NULL,
	[byNoahEvent_Hour] tinyint NOT NULL,
	[byNoahEvent_Minute] tinyint NOT NULL,
	[sNoahEvent_Duration] smallint NOT NULL,
	[byExpEvent] tinyint NOT NULL,
	[byExpEvent_Day] tinyint NOT NULL,
	[byExpEvent_Hour] tinyint NOT NULL,
	[byExpEvent_Minute] tinyint NOT NULL,
	[sExpEvent_Duration] smallint NOT NULL,
	[nTribute] int NOT NULL,
	[byTerritoryTariff] tinyint NOT NULL,
	[nTerritoryTax] int NOT NULL,
	[nNationalTreasury] int NOT NULL,
	[strKingName] varchar(21),
	[strImRequestID] varchar(21)
)
GO
ALTER TABLE [KING_SYSTEM] ADD CONSTRAINT [DF_KING_SYSTEM_byNoahEvent] DEFAULT 0 FOR [byNoahEvent]
GO
ALTER TABLE [KING_SYSTEM] ADD CONSTRAINT [DF_KING_SYSTEM_byExpEvent] DEFAULT 0 FOR [byExpEvent]
GO
ALTER TABLE [KING_SYSTEM] ADD CONSTRAINT [DF_KING_SYSTEM_nTribute] DEFAULT 0 FOR [nTribute]
GO
ALTER TABLE [KING_SYSTEM] ADD CONSTRAINT [DF_KING_SYSTEM_byTerritoryTariff] DEFAULT 0 FOR [byTerritoryTariff]
GO
ALTER TABLE [KING_SYSTEM] ADD CONSTRAINT [DF_KING_SYSTEM_nTerritoryTax] DEFAULT 0 FOR [nTerritoryTax]
GO
ALTER TABLE [KING_SYSTEM] ADD CONSTRAINT [DF_KING_SYSTEM_nNationalTreasury] DEFAULT 0 FOR [nNationalTreasury]
GO
