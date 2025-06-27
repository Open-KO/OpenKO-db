/****** Object:  Stored Procedure dbo.RENTAL_ITEM_CANCEL    Script Date: 6/6/2006 6:03:33 PM ******/


-- 2004.03.26. sungyong

CREATE PROCEDURE [RENTAL_ITEM_CANCEL]
@AccountID	varchar(21),		--     등록자 계정
@CharID	varchar(21),			--     등록자 캐릭 아이디
@nRentalIndex  int,
@nItemNumber   int,
@nRet		smallint OUTPUT

AS

--SET @Row = 0

-- rentallist 삭제
DELETE FROM RENTAL_ITEM WHERE nRentalIndex = @nRentalIndex and nItemIndex = @nItemNumber

-- 임대자정보에 대여정보 삭제
DELETE FROM USER_RENTAL_ITEM WHERE nRentalIndex = @nRentalIndex and nItemIndex = @nItemNumber

SET @nRet =  1
