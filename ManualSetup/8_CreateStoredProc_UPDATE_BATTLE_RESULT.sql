/****** Object:  Stored Procedure dbo.UPDATE_BATTLE_RESULT    Script Date: 6/6/2006 6:03:34 PM ******/

-- sungyong 2003.01.15 create

CREATE PROCEDURE [UPDATE_BATTLE_RESULT]
@UserId 	varchar(21),
@byNation	tinyint,
@index		smallint

AS

DECLARE @nKarusArea tinyint
DECLARE @nElmoArea tinyint

SELECT @nKarusArea=byKarusArea, @nElmoArea=byElmoArea FROM BATTLE WHERE sIndex=1

IF @byNation = 1		-- Karus Victory
BEGIN
	IF @nKarusArea = 1 or @nKarusArea > 12
		UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId WHERE sIndex = 1
	ELSE
	BEGIN
		IF @nKarusArea = 2
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-1, byElmoArea=@nElmoArea-1, byArea_1=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 3
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-1, byElmoArea=@nElmoArea-1, byArea_2=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 4
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-1, byElmoArea=@nElmoArea-1, byArea_3=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 5
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-1, byElmoArea=@nElmoArea-1, byArea_4=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 6
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-1, byElmoArea=@nElmoArea-1, byArea_5=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 7
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-1, byElmoArea=@nElmoArea-1, byArea_6=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 8
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-1, byElmoArea=@nElmoArea-1, byArea_7=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 9
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-2, byElmoArea=@nElmoArea-2, byArea_7=1, byArea_8=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 10
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-2, byElmoArea=@nElmoArea-2, byArea_8=1, byArea_9=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 11
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-2, byElmoArea=@nElmoArea-2, byArea_9=1, byArea_10=1 WHERE sIndex = 1
		ELSE IF @nKarusArea = 12
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea-2, byElmoArea=@nElmoArea-2, byArea_10=1, byArea_11=1 WHERE sIndex = 1
	END
END
ELSE IF @byNation = 2	-- Elmo Victory
BEGIN
	IF @nElmoArea = 11 or @nElmoArea < 0
		UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId WHERE sIndex = 1
	ELSE
	BEGIN
		IF @nElmoArea = 0
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+2, byElmoArea=@nElmoArea+2, byArea_1=2, byArea_2=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 1
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+2, byElmoArea=@nElmoArea+2, byArea_2=2, byArea_3=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 2
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+2, byElmoArea=@nElmoArea+2, byArea_3=2, byArea_4=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 3
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+2, byElmoArea=@nElmoArea+2, byArea_4=2, byArea_5=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 4
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+1, byElmoArea=@nElmoArea+1, byArea_5=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 5
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+1, byElmoArea=@nElmoArea+1, byArea_6=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 6
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+1, byElmoArea=@nElmoArea+1, byArea_7=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 7
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+1, byElmoArea=@nElmoArea+1, byArea_8=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 8
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+1, byElmoArea=@nElmoArea+1, byArea_9=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 9
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+1, byElmoArea=@nElmoArea+1, byArea_10=2 WHERE sIndex = 1
		ELSE IF @nElmoArea = 10
			UPDATE BATTLE SET byNation=@byNation, strUserName=@UserId, byKarusArea=@nKarusArea+1, byElmoArea=@nElmoArea+1, byArea_11=2 WHERE sIndex = 1
	END
END
