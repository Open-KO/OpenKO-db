/****** Object:  Stored Procedure dbo.KING_IMPEACHMENT_REQUEST_ELECTION    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.13

CREATE PROC [dbo].[KING_IMPEACHMENT_REQUEST_ELECTION]
@byType smallint,
@byNation tinyint,
@strUserID varchar(21)

AS

UPDATE KING_ELECTION_LIST
SET nKnights = @byType
WHERE strName = @strUserID and byType = 2
