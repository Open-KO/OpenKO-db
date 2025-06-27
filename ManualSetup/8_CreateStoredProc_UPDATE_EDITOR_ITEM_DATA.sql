/****** Object:  Stored Procedure dbo.UPDATE_EDITOR_ITEM_DATA    Script Date: 6/6/2006 6:03:34 PM ******/

-- Created By Sungyong 2004. 06. 17

CREATE  PROCEDURE [UPDATE_EDITOR_ITEM_DATA]
	@charid 		varchar(21),
	@accountid 		varchar(21),
	@opid 			varchar(21),
	@opip 			varchar(21),
	@sPos			smallint,
	@nItemID1		int,
	@nItemID2		int,
	@byType			tinyint,
	@sDBIndex		smallint
	

AS

IF @sDBIndex = 60
	return

INSERT INTO USER_EDITOR_ITEM (strCharID, strAccountID, strOpID, strOpIP, sDBIndex, sPos, byType, nItemID1, nItemID2, UpdateTime )
	VALUES	 (@charid, @accountid, @opid, @opip, @sDBIndex, @sPos, @byType, @nItemID1, @nItemID2, getdate() )
