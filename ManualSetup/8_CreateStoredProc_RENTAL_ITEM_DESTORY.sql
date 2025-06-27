/****** Object:  Stored Procedure dbo.RENTAL_ITEM_DESTORY    Script Date: 6/6/2006 6:03:33 PM ******/


-- 2004.03.26. sungyong

CREATE PROCEDURE [RENTAL_ITEM_DESTORY]
@AccountID	varchar(21),
@CharID	varchar(21),
@nItemNumber   int,
@nRentalIndex   int,
@nDurability	smallint,
@nRet		smallint OUTPUT

AS

DELETE FROM USER_RENTAL_ITEM WHERE strAccountID = @AccountID and nItemIndex = @nItemNumber

EXEC RENTAL_ITEM_DURABILITY_UPDATE @nRentalIndex, @nDurability

SET @nRet =  1
