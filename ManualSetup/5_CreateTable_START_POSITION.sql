USE [KN_online]
GO

CREATE TABLE [START_POSITION] (
	[ZoneID] smallint NOT NULL,
	[sKarusX] smallint NOT NULL,
	[sKarusZ] smallint NOT NULL,
	[sElmoradX] smallint NOT NULL,
	[sElmoradZ] smallint NOT NULL,
	[bRangeX] tinyint NOT NULL,
	[bRangeZ] tinyint NOT NULL,
	[sKarusGateX] smallint NOT NULL,
	[sKarusGateZ] smallint NOT NULL,
	[sElmoGateX] smallint NOT NULL,
	[sElmoGateZ] smallint NOT NULL
	CONSTRAINT [PK_START_POSITION] PRIMARY KEY CLUSTERED ([ZoneID])
)
GO
