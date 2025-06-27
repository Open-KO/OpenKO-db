/****** Object:  Stored Procedure dbo.KING_CANDIDACY_RECOMMEND    Script Date: 6/6/2006 6:03:33 PM ******/


-- 2004.07.07. sungyong

CREATE PROCEDURE [dbo].[KING_CANDIDACY_RECOMMEND]
@CharID_1	varchar(21),		--     추천한 사람의 아이디
@CharID_2	varchar(21),		--     추천받은 사람의 아이디
@nNation	tinyint,			--     소속국가
@nRet		smallint OUTPUT

AS

declare @nNationValue tinyint
declare @nKnights	smallint

SELECT * FROM KING_ELECTION_LIST WHERE  strName = @CharID_2 and byType = 4
IF @@ROWCOUNT <> 0		-- 추천되어 있는 경우
BEGIN
	SET @nRet = -5
	RETURN
END

SELECT @nNationValue = Nation, @nKnights = Knights FROM USERDATA WHERE  strUserId = @CharID_2
IF @@ROWCOUNT = 0		-- 해당 유저가 없는 경우
BEGIN
	SET @nRet = -1
	RETURN
END

IF @nNationValue <> @nNation	-- 추천인과 추천자의 국가가 다른경우
BEGIN
	SET @nRet = -4
	RETURN
END

-- 추천인 리스트에서 삭제
DELETE FROM KING_ELECTION_LIST WHERE strName = @CharID_1 and byType = 3
IF @@ROWCOUNT = 0		-- 추천권한이 없는 경우
begin 
	SET @nRet = -3
	return
end

INSERT INTO KING_ELECTION_LIST (byType, byNation, nKnights, strName, nMoney )
	VALUES ( 4, @nNation, @nKnights, @CharID_2, 0 )

SET @nRet =  @nKnights
