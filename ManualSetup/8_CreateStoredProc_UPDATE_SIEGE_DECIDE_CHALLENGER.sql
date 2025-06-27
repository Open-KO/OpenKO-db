/****** Object:  Stored Procedure dbo.UPDATE_SIEGE_DECIDE_CHALLENGER    Script Date: 6/6/2006 6:03:34 PM ******/


-- sungyong 2003.7.2 create
-- modified 2003.11.26 sungyong

CREATE PROCEDURE [UPDATE_SIEGE_DECIDE_CHALLENGER]
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
@sKnights_10		smallint

AS


UPDATE KNIGHTS_SIEGE_WARFARE SET sChallengeList_1 = @sKnights_1,  
					       sChallengeList_2 = @sKnights_2,
					       sChallengeList_3 = @sKnights_3,
					       sChallengeList_4 = @sKnights_4,
					       sChallengeList_5 = @sKnights_5,
					       sChallengeList_6 = @sKnights_6,
					       sChallengeList_7 = @sKnights_7,
					       sChallengeList_8 = @sKnights_8,
					       sChallengeList_9 = @sKnights_9,
					       sChallengeList_10 = @sKnights_10,
					       sRequestList_1 = 0,  
					       sRequestList_2 = 0,
					       sRequestList_3 = 0,
					       sRequestList_4 = 0,
					       sRequestList_5 = 0,
					       sRequestList_6 = 0,
					       sRequestList_7 = 0,
					       sRequestList_8 = 0,
					       sRequestList_9 = 0,
					       sRequestList_10 = 0,
					       strChallengeList = NULL	
	 WHERE sCastleIndex = @sCastleIndex
