/****** Object:  Stored Procedure dbo.CREATE_NEW_CHAR    Script Date: 6/6/2006 6:03:33 PM ******/


/****** ??: ?? ???? dbo.CREATE_NEW_CHAR    ???? ??: 2002-11-14 ?? 11:18:03 ******/


-- scripted by samma
-- 2002.01.17
-- 2003.02.06 sungyong 

CREATE PROCEDURE [CREATE_NEW_CHAR]

@nRet        smallint OUTPUT, 
@AccountID     varchar(21), 
@index         tinyint,
@CharID    varchar(21),
@Race         tinyint, 
@Class     smallint, 
@Hair         tinyint,
@Face         tinyint, 
@Str         tinyint, 
@Sta         tinyint, 
@Dex         tinyint,
@Intel         tinyint, 
@Cha         tinyint

AS

DECLARE @Row tinyint, @bCharNum tinyint, @Nation tinyint, @Zone tinyint, @PosX int, @PosZ int
    SELECT @Nation = bNation, @bCharNum = bCharNum FROM ACCOUNT_CHAR WHERE strAccountID = @AccountID
    IF @bCharNum >= 3    SET @nRet =  1
    IF @Nation = 1 AND @Race > 10    SET @nRet = 2
    ELSE IF @Nation = 2 AND @Race < 10    SET @nRet = 2
    ELSE IF @Nation <>1 AND @Nation <> 2    SET @nRet = 2

    IF @nRet > 0
        RETURN
    
    SELECT @Row = COUNT(*) FROM USERDATA WHERE strUserId = @CharID
    IF @Row > 0 
    BEGIN
        SET @nRet =  3
        RETURN
    END

    --SET @Zone = @Nation
    SET @Zone=21
    SELECT @PosX = InitX, @PosZ = InitZ  FROM ZONE_INFO WHERE ZoneNo = @Zone
    

BEGIN TRAN    
    IF @index = 0
        UPDATE ACCOUNT_CHAR SET strCharID1 = @CharID, bCharNum = bCharNum + 1 WHERE strAccountID = @AccountID AND strCharID1 IS NULL
    ELSE IF @index = 1
        UPDATE ACCOUNT_CHAR SET strCharID2 = @CharID, bCharNum = bCharNum + 1 WHERE strAccountID = @AccountID AND strCharID2 IS NULL
    ELSE IF @index = 2
        UPDATE ACCOUNT_CHAR SET strCharID3 = @CharID, bCharNum = bCharNum + 1 WHERE strAccountID = @AccountID AND strCharID3 IS NULL
        
    IF ((SELECT bCharNum FROM ACCOUNT_CHAR WHERE strAccountID = @AccountID) != @bCharNum + 1)
    BEGIN     
        ROLLBACK TRAN 
        SET @nRet =  4
        RETURN
	END
    
    INSERT INTO USERDATA (strUserId, Nation, Race, Class, HairColor, Face, Strong, Sta, Dex, Intel, Cha, Zone, PX, PZ ) 
    VALUES     (@CharID, @Nation, @Race, @Class, @Hair, @Face, @Str, @Sta, @Dex, @Intel, @Cha, @Zone, @PosX, @PosZ )
    
   
    IF @@ERROR <> 0
    BEGIN     
        ROLLBACK TRAN 
        SET @nRet =  4
        RETURN
    END
    
COMMIT TRAN
SET @nRet =  0
