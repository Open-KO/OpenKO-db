CREATE PROCEDURE [ACCOUNT_LOGOUT]
@AccountID	varchar(21),
@LogoutCode int,
@nRet		smallint	OUTPUT,
@nRet2 smallint OUTPUT
AS
DELETE FROM CURRENTUSER WHERE strAccountID = @AccountID
SET @nRet = 1
SET @nRet2 = 1
