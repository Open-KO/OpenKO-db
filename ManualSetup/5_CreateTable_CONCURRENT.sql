USE [KN_online]
GO

CREATE TABLE [CONCURRENT] (
	[serverid] tinyint NOT NULL,
	[zone1_count] smallint,
	[zone2_count] smallint,
	[zone3_count] smallint,
	[bz] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS
	CONSTRAINT [PK_CONCURRENT] PRIMARY KEY CLUSTERED ([serverid])
)
GO
