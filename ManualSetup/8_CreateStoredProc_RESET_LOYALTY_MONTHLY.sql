/****** Object:  Stored Procedure dbo.RESET_LOYALTY_MONTHLY    Script Date: 6/6/2006 6:03:32 PM ******/



--
-- 월간 기여도 초기화
-- 2004. 4. 22 : Arycoat
-- 입력값 : 없음
-- 출력값 : 없음
--

CREATE PROC [RESET_LOYALTY_MONTHLY] AS

UPDATE USERDATA
	SET LoyaltyMonthly = 0
	WHERE LoyaltyMonthly != 0
