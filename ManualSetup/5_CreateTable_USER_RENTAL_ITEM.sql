USE [KN_online]
GO

CREATE TABLE [USER_RENTAL_ITEM] (
	[strUserID] varchar(50) NOT NULL,
	[strAccountID] varchar(50) NOT NULL,
	[byRentalType] tinyint NOT NULL,
	[byRegType] tinyint NOT NULL,
	[nRentalIndex] int NOT NULL,
	[nItemIndex] int NOT NULL,
	[sDurability] smallint NOT NULL,
	[nSerialNumber] bigint NOT NULL,
	[nRentalMoney] int NOT NULL,
	[sRentalTime] smallint NOT NULL,
	[sDuringTime] smallint NOT NULL,
	[timeRental] smalldatetime,
	[timeRegister] smalldatetime
)
GO
ALTER TABLE [USER_RENTAL_ITEM] ADD CONSTRAINT [DF_USER_RENTAL_ITEM_byRegType] DEFAULT 0 FOR [byRegType]
GO
ALTER TABLE [USER_RENTAL_ITEM] ADD CONSTRAINT [DF_USER_RENTAL_ITEM_sDurability] DEFAULT 0 FOR [sDurability]
GO
ALTER TABLE [USER_RENTAL_ITEM] ADD CONSTRAINT [DF_USER_RENTAL_ITEM_timeRegister] DEFAULT getdate() FOR [timeRegister]
GO
