USE [KN_online]
GO

CREATE TABLE [COPY_SERIAL_ITEM] (
	[strUserId] char(21) COLLATE SQL_Latin1_General_CP1_CI_AS,
	[byType] tinyint,
	[nPos] smallint,
	[ItemNum] binary(4),
	[ItemSerial] binary(8)
)
GO
