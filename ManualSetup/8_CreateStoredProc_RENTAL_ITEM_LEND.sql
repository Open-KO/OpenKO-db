/****** Object:  Stored Procedure dbo.RENTAL_ITEM_LEND    Script Date: 6/6/2006 6:03:34 PM ******/


-- 2004.03.26. sungyong
CREATE PROCEDURE [RENTAL_ITEM_LEND]
@AccountID	varchar(21),		--     대여자 계정
@CharID	varchar(21),		--     대여자 캐릭 아이디
@nRentalIndex  int,
@nItemNumber   int,
@nRet		smallint OUTPUT

AS
SET @nRet =  -5
RETURN

DECLARE @Row tinyint, @sDurability smallint, @nSerialNumber bigint
DECLARE @bItemType tinyint, @bItemClass tinyint, @sRentalTime smallint, @nMoney int, @LendercharID varchar(21), @LenderAccountID varchar(21)
DECLARE @timeLend smalldatetime, @timeRegister smalldatetime
SET @Row = 0
SET @timeLend = getdate()

SELECT @sDurability=sDurability, @nSerialNumber=nSerialNumber, @bItemType=byItemType, @bItemClass=byClass, 
       @sRentalTime=sRentalTime, @nMoney=nRentalMoney, @LendercharID=strLenderCharID, @LenderAccountID=strLenderAcID, @timeRegister=timeRegister
FROM RENTAL_ITEM 
WHERE nRentalIndex = @nRentalIndex and nItemIndex = @nItemNumber

IF @bItemType = 0
BEGIN
	SET @nRet =  -5
	RETURN
END

-- list에 입력
INSERT INTO 
RENTAL_ITEM_LIST ( nRentalIndex, nItemIndex, sDurability, nSerialNumber, byItemType, byClass, sRentalTime, nRentalMoney, strLenderCharID, strLenderAcID, strBorrowerCharID, strBorrowerAcID, timeLender, timeRegister ) 
VALUES	 (@nRentalIndex, @nItemNumber, @sDurability, @nSerialNumber, @bItemType, @bItemClass, @sRentalTime, @nMoney, @LendercharID, @LenderAccountID, @CharID, @AccountID, @timeLend, @timeLend )

-- rentallist 삭제
DELETE FROM RENTAL_ITEM WHERE nRentalIndex = @nRentalIndex and nItemIndex = @nItemNumber

-- 대여자정보에 추가
INSERT INTO 
USER_RENTAL_ITEM ( strUserID, strAccountID, byRentalType, nRentalIndex, nItemIndex, sDurability, nSerialNumber, nRentalMoney, sRentalTime, sDuringTime, timeRental, timeRegister ) 
VALUES	         ( @CharID,   @AccountID,   3,           @nRentalIndex, @nItemNumber, @sDurability, @nSerialNumber, 0, 	      @sRentalTime, @sRentalTime, @timeLend, @timeRegister )

-- 임대자정보에 대여정보 추가
UPDATE USER_RENTAL_ITEM
SET byRentalType=2, nRentalMoney = @nMoney, timeRental = @timeLend
WHERE strAccountID = @LenderAccountID and nRentalIndex = @nRentalIndex

SET @nRet =  1
