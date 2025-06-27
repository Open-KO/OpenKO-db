CREATE PROCEDURE [PROC_INSERT_CURRENTUSER]
	@AccountID varchar(21),
	@CharID varchar(21),
	@nServerNo smallint,
	@strServerIP varchar(15),
	@ClientIP varchar(15),
	@nRet smallint output
AS
INSERT INTO CURRENTUSER (strAccountID, strCharID, nServerNo, strServerIP, strClientIP ) Values (@AccountID, @CharID, @nServerNo, @strServerIP, @ClientIP )
SET @nRet = 1
