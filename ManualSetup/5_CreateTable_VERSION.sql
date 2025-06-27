USE [KN_online]
GO

CREATE TABLE [VERSION] (
	[sVersion] smallint NOT NULL,
	[strFileName] varchar(50) NOT NULL,
	[strCompressName] varchar(50) NOT NULL,
	[sHistoryVersion] smallint NOT NULL
	CONSTRAINT [PK_VERSION] PRIMARY KEY CLUSTERED ([sVersion])
)
GO
