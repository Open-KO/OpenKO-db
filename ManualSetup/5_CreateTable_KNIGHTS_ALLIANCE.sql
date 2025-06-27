USE [KN_online]
GO

CREATE TABLE [KNIGHTS_ALLIANCE] (
	[sMainAllianceKnights] smallint NOT NULL,
	[sSubAllianceKnights] smallint NOT NULL,
	[sMercenaryClan_1] smallint NOT NULL,
	[sMercenaryClan_2] smallint NOT NULL
	CONSTRAINT [PK_KNIGHTS_ALLIANCE] PRIMARY KEY CLUSTERED ([sMainAllianceKnights])
)
GO
