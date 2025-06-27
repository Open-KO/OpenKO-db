/****** Object:  Stored Procedure dbo.UPDATE_WAREHOUSE    Script Date: 6/6/2006 6:03:34 PM ******/



CREATE  PROCEDURE [UPDATE_WAREHOUSE]
	@accountid 		varchar(21),
	@Money		int,
	@dwTime		int,
	@strItem		varchar(1600),
	@strSerial		varchar(1600)
AS
UPDATE	WAREHOUSE
Set
	nMoney		= @Money,
	dwTime		= @dwTime,
	WarehouseData	= @strItem,
	strSerial		= @strSerial
WHERE	strAccountID	= @accountid
