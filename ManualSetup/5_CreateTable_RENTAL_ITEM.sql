USE [KN_online]
GO

CREATE TABLE [RENTAL_ITEM] (
	[nRentalIndex] int NOT NULL,
	[nItemIndex] int NOT NULL,
	[sDurability] smallint NOT NULL,
	[nSerialNumber] bigint NOT NULL,
	[byRegType] tinyint NOT NULL,
	[byItemType] tinyint NOT NULL,
	[byClass] tinyint NOT NULL,
	[sRentalTime] smallint NOT NULL,
	[nRentalMoney] int NOT NULL,
	[strLenderCharID] varchar(21) NOT NULL,
	[strLenderAcID] varchar(21) NOT NULL,
	[strBorrowerCharID] varchar(21),
	[strBorrowerAcID] varchar(21),
	[timeLender] smalldatetime,
	[timeRegister] smalldatetime NOT NULL
	CONSTRAINT [PK_RENTAL_ITEM] PRIMARY KEY CLUSTERED ([nRentalIndex])
)
GO
ALTER TABLE [RENTAL_ITEM] ADD CONSTRAINT [DF_RENTAL_ITEM_sDurability] DEFAULT 0 FOR [sDurability]
GO
ALTER TABLE [RENTAL_ITEM] ADD CONSTRAINT [DF_RENTAL_ITEM_byRegType] DEFAULT 0 FOR [byRegType]
GO
ALTER TABLE [RENTAL_ITEM] ADD CONSTRAINT [DF_RENTAL_ITEM_timeRegister] DEFAULT getdate() FOR [timeRegister]
GO
