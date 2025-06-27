/****** Object:  Stored Procedure dbo.KING_IMPEACHMENT_RESULT    Script Date: 6/6/2006 6:03:33 PM ******/

-- 2004.07.07. sungyong

CREATE PROCEDURE [KING_IMPEACHMENT_RESULT]
@byNation	tinyint,
@nTotalMan	smallint OUTPUT,
@nAgreeMan	smallint OUTPUT

AS

declare @nRow smallint

SELECT @nTotalMan = count(strAccountID) FROM KING_BALLOT_BOX WHERE  byNation = @byNation
SELECT @nAgreeMan = count(strAccountID) FROM KING_BALLOT_BOX WHERE  strCandidacyID = 'Y'
