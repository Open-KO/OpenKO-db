/****** Object:  Stored Procedure dbo.KING_UPDATE_ELECTION_LIST    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.09

CREATE PROC [KING_UPDATE_ELECTION_LIST]
@byDBType tinyint,
@byType tinyint,
@byNation tinyint,
@nKnights smallint,
@nAmount int,
@strUserID varchar(21)

AS

IF @byDBType = 1
BEGIN
	INSERT INTO KING_ELECTION_LIST (byType, byNation, nKnights, strName, nMoney )
	VALUES ( @byType, @byNation, @nKnights, @strUserID, @nAmount )
END
ELSE IF @byDBType = 2
BEGIN
	DELETE FROM KING_ELECTION_LIST
	WHERE byType = @byType and strName = @strUserID
END

IF @byType = 1
begin
	UPDATE KING_SYSTEM SET strKingName = @strUserID WHERE byNation = @byNation
end
