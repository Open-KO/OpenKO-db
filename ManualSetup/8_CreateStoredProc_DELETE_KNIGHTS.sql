/****** Object:  Stored Procedure dbo.DELETE_KNIGHTS    Script Date: 6/6/2006 6:03:32 PM ******/


CREATE PROCEDURE [dbo].[DELETE_KNIGHTS]
@nRet			smallint OUTPUT,
@knightsindex		smallint
AS

DECLARE @Row	tinyint, @Knights smallint, @Fame tinyint, @UserID varchar(21)
		SET @Row = 0 SET @Knights = 0 SET @Fame = 0 SET @UserID = ''


-- sungyong modify
SELECT @Row = COUNT(*) FROM KNIGHTS WHERE IDNum = @knightsindex
	IF @Row = 0
	BEGIN
		SET @nRet = 7
		RETURN
	END

BEGIN TRAN

	DELETE FROM KNIGHTS WHERE IDNum = @knightsindex
	DELETE FROM KNIGHTS_USER WHERE sIDNum = @knightsindex

	IF @@ERROR <> 0
	BEGIN
		ROLLBACK TRAN
		SET @nRet = 7
		RETURN 
	END

	-- UPDATE USERDATA SET Knights = 0, Fame = 0 WHERE Knights = @knightsindex

COMMIT TRAN
SET @nRet = 0
