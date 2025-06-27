/****** Object:  Stored Procedure dbo.KING_CANDIDACY_NOTICE_BOARD_PROC    Script Date: 6/6/2006 6:03:33 PM ******/


-- created by sungyong 2004.07.09

CREATE PROC [dbo].[KING_CANDIDACY_NOTICE_BOARD_PROC]
@strUserID varchar(21),
@sNoticeLen smallint, 
@byNation tinyint, 
@strNotice varbinary(1024)

AS

declare @nRet smallint
SELECT @nRet = count(strUserID) FROM KING_CANDIDACY_NOTICE_BOARD WHERE  strUserID = @strUserID
IF @nRet > 0
	BEGIN
		UPDATE KING_CANDIDACY_NOTICE_BOARD
		SET sNoticeLen = @sNoticeLen,
		strNotice = @strNotice
		WHERE strUserID = @strUserID
	END
ELSE
	BEGIN
		INSERT INTO KING_CANDIDACY_NOTICE_BOARD (strUserID, byNation, sNoticeLen, strNotice )
		VALUES ( @strUserID, @byNation, @sNoticeLen, @strNotice )
	
	END
