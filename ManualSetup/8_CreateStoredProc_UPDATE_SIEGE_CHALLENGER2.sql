/****** Object:  Stored Procedure dbo.UPDATE_SIEGE_CHALLENGER2    Script Date: 6/6/2006 6:03:34 PM ******/

-- sungyong 2003.11.26 create

CREATE PROCEDURE [UPDATE_SIEGE_CHALLENGER2]
@sCastleIndex		smallint,
@sKnights_1		smallint,
@sKnights_2		smallint,
@sKnights_3		smallint,
@sKnights_4		smallint,
@sKnights_5		smallint,
@sKnights_6		smallint,
@sKnights_7		smallint,
@sKnights_8		smallint,
@sKnights_9		smallint,
@sKnights_10		smallint,
@strChallengerList	varchar(50)

AS


UPDATE KNIGHTS_SIEGE_WARFARE SET strChallengeList = @strChallengerList,
					       sRequestList_1 = @sKnights_1,  
					       sRequestList_2 = @sKnights_2,
					       sRequestList_3 = @sKnights_3,
					       sRequestList_4 = @sKnights_4,
					       sRequestList_5 = @sKnights_5,
					       sRequestList_6 = @sKnights_6,
					       sRequestList_7 = @sKnights_7,
					       sRequestList_8 = @sKnights_8,
					       sRequestList_9 = @sKnights_9,
					       sRequestList_10 = @sKnights_10
	 WHERE sCastleIndex = @sCastleIndex
