/****** Object:  Stored Procedure dbo.LOAD_RENTAL_DATA    Script Date: 6/6/2006 6:03:33 PM ******/



-- Created 2004.03.22 by sungyong

CREATE PROCEDURE [dbo].[LOAD_RENTAL_DATA]
@strAccountID	varchar(21)
AS

declare @current_time smalldatetime
SET @current_time = getdate()

SELECT strUserID, byRentalType, byRegType, nRentalIndex, nItemIndex, sDurability, nSerialNumber, nRentalMoney, sRentalTime, sDuringTime=datediff( n, timeRental, @current_time ), timeRental
FROM USER_RENTAL_ITEM
WHERE strAccountID = @strAccountID

-- sRentalTime와 sDuringTime타임을 비교하여 기간이 다 된거면 삭제처리.....
DELETE FROM USER_RENTAL_ITEM 
WHERE strAccountID = @strAccountID and (byRentalType=2 or byRentalType=3) and sRentalTime< datediff( n, timeRental, @current_time ) 

-- 대여중이면서 대여료를 받지 않은 것을 0으로 바꾸어줌...
UPDATE USER_RENTAL_ITEM
SET nRentalMoney = 0
WHERE strAccountID = @strAccountID and byRentalType=2 and nRentalMoney>0
