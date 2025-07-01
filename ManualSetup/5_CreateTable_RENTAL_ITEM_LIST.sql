USE [KN_online]
GO

CREATE TABLE [RENTAL_ITEM_LIST] (
	[nRentalIndex] int NOT NULL,
	[nItemIndex] int NOT NULL,
	[sDurability] smallint NOT NULL,
	[nSerialNumber] bigint NOT NULL,
	[byRegType] tinyint NOT NULL,
	[byItemType] tinyint NOT NULL,
	[byClass] tinyint NOT NULL,
	[sRentalTime] smallint NOT NULL,
	[nRentalMoney] int NOT NULL,
	[strLenderCharID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strLenderAcID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[strBorrowerCharID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[strBorrowerAcID] varchar(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[timeLender] smalldatetime,
	[timeRegister] smalldatetime NOT NULL
)
GO
ALTER TABLE [RENTAL_ITEM_LIST] ADD CONSTRAINT [DF_RENTAL_ITEM_LIST_sDurability] DEFAULT 0 FOR [sDurability]
GO
ALTER TABLE [RENTAL_ITEM_LIST] ADD CONSTRAINT [DF_RENTAL_ITEM_LIST_byRegType] DEFAULT 0 FOR [byRegType]
GO
ALTER TABLE [RENTAL_ITEM_LIST] ADD CONSTRAINT [DF_RENTAL_ITEM_LIST_timeRegister] DEFAULT getdate() FOR [timeRegister]
GO
