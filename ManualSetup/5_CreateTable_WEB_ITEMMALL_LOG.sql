USE [KN_online]
GO

CREATE TABLE [WEB_ITEMMALL_LOG] (
	[strAccountID] varchar(21) NOT NULL,
	[strCharID] varchar(21) NOT NULL,
	[ServerNo] smallint NOT NULL,
	[ItemID] int NOT NULL,
	[ItemCount] smallint NOT NULL,
	[BuyTime] smalldatetime NOT NULL,
	[img_file_name] varchar(50),
	[strItemName] varchar(100),
	[price] int,
	[pay_type] int
)
GO
ALTER TABLE [WEB_ITEMMALL_LOG] ADD CONSTRAINT [DF_WEB_ITEMMALL_LOG_BuyTime] DEFAULT getdate() FOR [BuyTime]
GO
