/****** Object:  Stored Procedure dbo.UPDATE_KNIGHTS_ALLIANCE    Script Date: 6/6/2006 6:03:32 PM ******/

-- Created By Sungyong 2003.06.18

CREATE PROCEDURE [UPDATE_KNIGHTS_ALLIANCE]
@byType		tinyint,
@shAlliancIndex		smallint,
@shKnightsIndex	smallint,
@byEmptyIndex		tinyint,
@bySiegeFlag		tinyint

AS

DECLARE @SubKnightsIndex smallint
DECLARE @MercenaryClan_1 smallint
DECLARE @MercenaryClan_2 smallint
SET @SubKnightsIndex = 0
SET @MercenaryClan_1 = 0
SET @MercenaryClan_2 = 0

IF @byType = 44		-- create alliance
BEGIN
	INSERT INTO KNIGHTS_ALLIANCE (sMainAllianceKnights) VALUES (@shAlliancIndex)
	UPDATE KNIGHTS SET bySiegeFlag = @bySiegeFlag, sAllianceKnights = @shAlliancIndex WHERE IDNum = @shAlliancIndex
END
ELSE IF @byType = 46		-- insert alliance
BEGIN
	IF @byEmptyIndex = 1	-- sub knights index
	BEGIN
		UPDATE KNIGHTS_ALLIANCE SET sSubAllianceKnights = @shKnightsIndex WHERE sMainAllianceKnights = @shAlliancIndex	
		UPDATE KNIGHTS SET bySiegeFlag = @bySiegeFlag, sAllianceKnights = @shAlliancIndex WHERE IDNum = @shKnightsIndex	
	END
	IF @byEmptyIndex = 2	-- mercenary clan 1 index
	BEGIN
		UPDATE KNIGHTS_ALLIANCE SET sMercenaryClan_1 = @shKnightsIndex WHERE sMainAllianceKnights = @shAlliancIndex	
		UPDATE KNIGHTS SET bySiegeFlag = @bySiegeFlag, sAllianceKnights = @shAlliancIndex WHERE IDNum = @shKnightsIndex	
	END
	IF @byEmptyIndex = 3	-- mercenary clan 2 index
	BEGIN
		UPDATE KNIGHTS_ALLIANCE SET sMercenaryClan_2 = @shKnightsIndex WHERE sMainAllianceKnights = @shAlliancIndex	
		UPDATE KNIGHTS SET bySiegeFlag = @bySiegeFlag, sAllianceKnights = @shAlliancIndex WHERE IDNum = @shKnightsIndex	
	END
END
ELSE IF @byType = 47 or @byType =  48		-- remove alliance, -- punish alliance
BEGIN
	SELECT @SubKnightsIndex=sSubAllianceKnights, @MercenaryClan_1= sMercenaryClan_1,  @MercenaryClan_2= sMercenaryClan_2 FROM KNIGHTS_ALLIANCE WHERE sMainAllianceKnights = @shAlliancIndex
	IF @SubKnightsIndex = @shKnightsIndex	
	BEGIN
		UPDATE KNIGHTS_ALLIANCE SET sSubAllianceKnights = 0 WHERE sMainAllianceKnights = @shAlliancIndex	
	END
	IF @MercenaryClan_1 = @shKnightsIndex	
	BEGIN
		UPDATE KNIGHTS_ALLIANCE SET sMercenaryClan_1 = 0 WHERE sMainAllianceKnights = @shAlliancIndex	
	END
	IF @MercenaryClan_2 = @shKnightsIndex	
	BEGIN
		UPDATE KNIGHTS_ALLIANCE SET sMercenaryClan_2 = 0 WHERE sMainAllianceKnights = @shAlliancIndex	
	END

	UPDATE KNIGHTS SET bySiegeFlag = 0, sAllianceKnights = 0 WHERE IDNum = @shKnightsIndex	
END
ELSE IF @byType = 49		-- destory alliance
BEGIN
	SELECT @SubKnightsIndex=sSubAllianceKnights, @MercenaryClan_1= sMercenaryClan_1,  @MercenaryClan_2= sMercenaryClan_2 FROM KNIGHTS_ALLIANCE WHERE sMainAllianceKnights = @shAlliancIndex

	UPDATE KNIGHTS SET bySiegeFlag = 0, sAllianceKnights = 0 WHERE IDNum = @shAlliancIndex	

	IF @SubKnightsIndex <> 0
	BEGIN
		UPDATE KNIGHTS SET bySiegeFlag = 0, sAllianceKnights = 0 WHERE IDNum = @SubKnightsIndex	
	END
	IF @MercenaryClan_1 <> 0
	BEGIN
		UPDATE KNIGHTS SET bySiegeFlag = 0, sAllianceKnights = 0 WHERE IDNum = @MercenaryClan_1
	END
	IF @MercenaryClan_2 <> 0
	BEGIN
		UPDATE KNIGHTS SET bySiegeFlag = 0, sAllianceKnights = 0 WHERE IDNum = @MercenaryClan_2
	END

	DELETE FROM KNIGHTS_ALLIANCE WHERE sMainAllianceKnights = @shAlliancIndex	
END
