USE [KN_online]
GO

CREATE TABLE [MAKE_ITEM] (
	[sIndex] smallint NOT NULL,
	[strItemInfo] varchar(20),
	[iItemCode] int NOT NULL,
	[byItemLevel] tinyint NOT NULL
)
GO
ALTER TABLE [MAKE_ITEM] ADD CONSTRAINT [DF_MAKE_ITEM_byItemLevel] DEFAULT 0 FOR [byItemLevel]
GO
