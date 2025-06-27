/****** Object:  Stored Procedure dbo.KING_INSERT_PRIZE_EVENT    Script Date: 6/6/2006 6:03:33 PM ******/

-- created by sungyong 2004.07.09

CREATE PROCEDURE [dbo].[KING_INSERT_PRIZE_EVENT]
        @byType tinyint,
        @byNation tinyint,
        @nAmount int,
        @strUserID varchar(21)
AS
UPDATE KING_SYSTEM SET nNationalTreasury = nNationalTreasury - @nAmount WHERE byNation = @byNation
