/****** Object:  Stored Procedure dbo.UPDATE_SIEGE_CHALLENGER    Script Date: 6/6/2006 6:03:34 PM ******/

-- sungyong 2003.7.2 create

CREATE PROCEDURE [UPDATE_SIEGE_CHALLENGER]
@sCastleIndex		smallint,
@strChallengerList	varchar(50)

AS


UPDATE KNIGHTS_SIEGE_WARFARE SET strChallengeList = @strChallengerList
	 WHERE sCastleIndex = @sCastleIndex
