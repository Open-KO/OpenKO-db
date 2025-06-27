/****** Object:  Stored Procedure dbo.UPDATE_KNIGHTS_WAR    Script Date: 6/6/2006 6:03:32 PM ******/

-- Created By Sungyong 2003.02.06

CREATE PROCEDURE [UPDATE_KNIGHTS_WAR]
@byType		tinyint,
@shWhite		smallint,
@shBlue		smallint

AS

DECLARE @strWhiteName varchar(21)
DECLARE @strBlueName varchar(21)

SET @strWhiteName = NULL
SET @strBlueName = NULL

IF @byType = 1
BEGIN
	SELECT @strWhiteName = IDName FROM KNIGHTS WHERE IDNum = @shWhite
	SELECT @strBlueName = IDName FROM KNIGHTS WHERE IDNum = @shBlue
	UPDATE KNIGHTS SET nWarEnemyID = @shBlue, strEnemyName = @strBlueName WHERE IDNum = @shWhite
	UPDATE KNIGHTS SET nWarEnemyID = @shWhite, strEnemyName = @strWhiteName WHERE IDNum = @shBlue
END
ELSE IF @byType = 2
BEGIN
	UPDATE KNIGHTS SET byOldWarResult = 2, nLose = nLose+1, nWarEnemyID = 0 WHERE IDNum = @shWhite	-- lose team
	UPDATE KNIGHTS SET byOldWarResult = 1, nVictory = nVictory+1, nWarEnemyID = 0 WHERE IDNum = @shBlue	-- victory team
END
