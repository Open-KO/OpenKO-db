USE [KN_online]
GO

CREATE TABLE [COUPON_SERIAL_LIST] (
	[nIndex] int NOT NULL,
	[strSerialNum] varchar(16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[nItemNum] int NOT NULL,
	[sItemCount] smallint NOT NULL
)
GO
