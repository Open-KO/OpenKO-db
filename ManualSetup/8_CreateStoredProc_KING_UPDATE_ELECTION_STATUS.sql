/****** Object:  Stored Procedure dbo.KING_UPDATE_ELECTION_STATUS    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.13

CREATE PROC [KING_UPDATE_ELECTION_STATUS]
@byType tinyint,
@byNation tinyint

AS

UPDATE KING_SYSTEM
SET byType = @byType
WHERE byNation = @byNation

IF @byType = 1				-- 추천
BEGIN
	DELETE FROM KING_ELECTION_LIST WHERE byNation = @byNation
	DELETE FROM KING_BALLOT_BOX WHERE byNation = @byNation
	DELETE FROM KING_CANDIDACY_NOTICE_BOARD WHERE byNation = @byNation
END
ELSE IF @byType = 2				-- 추천 마감중이라면 추천리스트 삭제
BEGIN
	DELETE FROM KING_ELECTION_LIST WHERE byType = 3 and byNation = @byNation
END
IF @byType = 7				-- 왕이 뽑혔다면..
BEGIN
	DELETE FROM KING_ELECTION_LIST WHERE byType = 4 and byNation = @byNation
END
IF @byType = 0				-- 왕이 뽑히지 않았다면..
BEGIN
	DELETE FROM KING_ELECTION_LIST WHERE byType = 4 and byNation = @byNation
END
