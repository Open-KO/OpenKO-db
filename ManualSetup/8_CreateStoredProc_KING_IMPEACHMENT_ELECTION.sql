/****** Object:  Stored Procedure dbo.KING_IMPEACHMENT_ELECTION    Script Date: 6/6/2006 6:03:33 PM ******/

-- 2004.07.07. sungyong

CREATE PROCEDURE [dbo].[KING_IMPEACHMENT_ELECTION]
@byResult	tinyint,
@byNation	tinyint,
@strAccountID	varchar(21),		--     투표한 사람의 계정
@strCharID	varchar(21),		--     투표한 사람의 아이디
@nRet		smallint OUTPUT

AS

declare @nRow smallint

SELECT @nRow = count(strAccountID) FROM KING_BALLOT_BOX WHERE  strAccountID = @strAccountID
IF @nRow > 0		-- 투표를 한 사람
BEGIN
	SET @nRet = -3
	RETURN
END

IF @byResult = 1
BEGIN
	INSERT INTO KING_BALLOT_BOX (strAccountID, strCharID, byNation, strCandidacyID )
		VALUES ( @strAccountID, @strCharID, @byNation, 'Y' )
END
ELSE IF @byResult = 2
BEGIN
	INSERT INTO KING_BALLOT_BOX (strAccountID, strCharID, byNation, strCandidacyID )
		VALUES ( @strAccountID, @strCharID, @byNation, 'N' )
END

SET @nRet =  1
RETURN
