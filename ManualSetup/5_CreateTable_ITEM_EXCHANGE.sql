USE [KN_online]
GO

CREATE TABLE [ITEM_EXCHANGE] (
	[nIndex] int NOT NULL,
	[nNpcNum] smallint NOT NULL,
	[strNpcName] varchar(50),
	[strNote] varchar(100),
	[bRandomFlag] tinyint NOT NULL,
	[nOriginItemNum1] int NOT NULL,
	[nOriginItemCount1] smallint NOT NULL,
	[nOriginItemNum2] int NOT NULL,
	[nOriginItemCount2] smallint NOT NULL,
	[nOriginItemNum3] int NOT NULL,
	[nOriginItemCount3] smallint NOT NULL,
	[nOriginItemNum4] int NOT NULL,
	[nOriginItemCount4] smallint NOT NULL,
	[nOriginItemNum5] int NOT NULL,
	[nOriginItemCount5] smallint NOT NULL,
	[nExchangeItemNum1] int NOT NULL,
	[nExchangeItemCount1] smallint NOT NULL,
	[nExchangeItemNum2] int NOT NULL,
	[nExchangeItemCount2] smallint NOT NULL,
	[nExchangeItemNum3] int NOT NULL,
	[nExchangeItemCount3] smallint NOT NULL,
	[nExchangeItemNum4] int NOT NULL,
	[nExchangeItemCount4] smallint NOT NULL,
	[nExchangeItemNum5] int NOT NULL,
	[nExchangeItemCount5] smallint NOT NULL
)
GO
