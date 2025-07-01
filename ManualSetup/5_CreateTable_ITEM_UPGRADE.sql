USE [KN_online]
GO

CREATE TABLE [ITEM_UPGRADE] (
	[nIndex] int NOT NULL,
	[nNPCNum] smallint NOT NULL,
	[strName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strNote] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[nOriginType] smallint NOT NULL,
	[nOriginItem] smallint NOT NULL,
	[nReqItem1] int NOT NULL,
	[nReqItem2] int NOT NULL,
	[nReqItem3] int NOT NULL,
	[nReqItem4] int NOT NULL,
	[nReqItem5] int NOT NULL,
	[nReqItem6] int NOT NULL,
	[nReqItem7] int NOT NULL,
	[nReqItem8] int NOT NULL,
	[nReqNoah] int NOT NULL,
	[bRateType] tinyint NOT NULL,
	[nGenRate] smallint NOT NULL,
	[nGiveItem] smallint NOT NULL
	CONSTRAINT [PK_ITEM_UPGRADE] PRIMARY KEY CLUSTERED ([nIndex])
)
GO
