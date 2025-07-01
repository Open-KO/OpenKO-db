USE [KN_online]
GO

CREATE TABLE [SERVER_RESOURCE] (
	[nResourceID] int NOT NULL,
	[strName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strResource] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS
	CONSTRAINT [PK_SERVER_RESOURCE] PRIMARY KEY CLUSTERED ([nResourceID])
)
GO
