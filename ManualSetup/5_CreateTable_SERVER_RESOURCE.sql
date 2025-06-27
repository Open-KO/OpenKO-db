USE [KN_online]
GO

CREATE TABLE [SERVER_RESOURCE] (
	[nResourceID] int NOT NULL,
	[strName] varchar(50) NOT NULL,
	[strResource] varchar(100)
	CONSTRAINT [PK_SERVER_RESOURCE] PRIMARY KEY CLUSTERED ([nResourceID])
)
GO
