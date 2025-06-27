CREATE PROCEDURE [ACCOUNT_LOGIN]
	@AccountID	varchar(21),
	@Password	varchar(13),
	@nRet		smallint	OUTPUT
AS
DECLARE @Nation tinyint, @CharNum smallint, @pwd varchar(13)
SELECT @pwd = strPasswd FROM TB_USER WHERE strAccountID = @AccountID AND strAuthority != 255
IF @@ROWCOUNT = 0 OR @pwd != @Password 
BEGIN
	SET @nRet = 0
	RETURN
END

SELECT @Nation = bNation, @CharNum = bCharNum FROM ACCOUNT_CHAR WHERE strAccountID = @AccountID
IF @@ROWCOUNT = 0 OR @CharNum = 0
	SET @nRet = 1
ELSE 
	SET @nRet = @Nation+1
