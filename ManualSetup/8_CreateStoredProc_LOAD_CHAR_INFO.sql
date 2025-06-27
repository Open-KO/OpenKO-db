/****** Object:  Stored Procedure dbo.LOAD_CHAR_INFO    Script Date: 6/6/2006 6:03:32 PM ******/

-- Scripted by Samma
-- 2002.01.18
-- modifed by Sungyong 2002.10.29 ,, add zone filed

CREATE PROCEDURE [LOAD_CHAR_INFO]
@CharId	varchar(21),
@nRet		smallint OUTPUT
AS

SELECT @nRet = COUNT(strUserId) FROM USERDATA WHERE strUserId = @CharId
IF @nRet = 0
	RETURN

SELECT Race, Class, HairColor, [Level], Face, Zone, strItem FROM USERDATA WHERE strUserID = @CharId

SET @nRet = 1
RETURN
