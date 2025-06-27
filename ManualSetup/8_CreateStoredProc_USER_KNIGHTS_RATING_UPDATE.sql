CREATE PROCEDURE [USER_KNIGHTS_RATING_UPDATE] 

AS

SET NOCOUNT ON

IF exists (select * from sysobjects where id = object_id(N'[dbo].[KUSER_RATING]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KUSER_RATING]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EUSER_RATING]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EUSER_RATING]

CREATE TABLE [dbo].[KUSER_RATING] (
    [nRank] [int] IDENTITY (1, 1) NOT NULL ,
    [strUserID] [varchar] (21) NULL,
    [strKnightsName] [varchar] (21) NULL ,
    [nLoyalty] [int] NULL ,
) ON [PRIMARY]

CREATE TABLE [dbo].[EUSER_RATING] (
    [nRank] [int] IDENTITY (1, 1) NOT NULL ,
    [strUserID] [varchar] (21) NULL,
    [strKnightsName] [varchar] (21) NULL ,
    [nLoyalty] [int] NULL ,
) ON [PRIMARY]

-- KARUS User
INSERT INTO KUSER_RATING
    SELECT TOP 100 USERDATA.strUserId, KNIGHTS.IDName, USERDATA.Loyalty FROM USERDATA INNER JOIN KNIGHTS ON USERDATA.Knights = KNIGHTS.IDNum
    WHERE   (USERDATA.Nation = 1) and (USERDATA.City <> 255 )
     AND Authority NOT IN(0,250,255)
    ORDER BY USERDATA.Loyalty DESC, USERDATA.LoyaltyMonthly DESC

-- ELMO User
INSERT INTO EUSER_RATING 
    SELECT TOP 100 USERDATA.strUserId, KNIGHTS.IDName, USERDATA.Loyalty FROM USERDATA INNER JOIN KNIGHTS ON USERDATA.Knights = KNIGHTS.IDNum
    WHERE   (USERDATA.Nation = 2) and (USERDATA.City <> 255 )
     AND Authority NOT IN(0,250,255)
    ORDER BY USERDATA.Loyalty DESC, USERDATA.LoyaltyMonthly DESC

CREATE  INDEX [IX_rating_rank] ON [dbo].[KUSER_RATING]([nRank]) ON [PRIMARY]
CREATE  INDEX [IX_rating_rank] ON [dbo].[EUSER_RATING]([nRank]) ON [PRIMARY]

-- USER_KNIGHTS_RANK Update Table
DECLARE @strCharID varchar(21)
DECLARE @strKnightsID varchar(21)
DECLARE @nIndex smallint
DECLARE @nLoyalty int

SET @strCharID = NULL
SET @strKnightsID = NULL
SET @nIndex = 0
SET @nLoyalty = 0

-- Karus UPDATE
DECLARE job1 CURSOR FOR

SELECT nRank, strUserID, strKnightsName, nLoyalty FROM KUSER_RATING

OPEN job1
FETCH NEXT FROM job1
INTO @nIndex, @strCharID, @strKnightsID, @nLoyalty
WHILE @@fetch_status = 0 
BEGIN
        UPDATE USER_KNIGHTS_RANK SET strKarusUserID = @strCharID, strKarusKnightsName = @strKnightsID, nKarusLoyalty = @nLoyalty WHERE shIndex = @nIndex
            
    FETCH NEXT FROM job1
    INTO @nIndex, @strCharID, @strKnightsID, @nLoyalty
END
CLOSE job1
DEALLOCATE job1

-- ElMorad UPDATE
DECLARE job2 CURSOR FOR

SELECT nRank, strUserID, strKnightsName, nLoyalty FROM EUSER_RATING

OPEN job2
FETCH NEXT FROM job2
INTO @nIndex, @strCharID, @strKnightsID, @nLoyalty
WHILE @@fetch_status = 0 
BEGIN
        UPDATE USER_KNIGHTS_RANK SET strElmoUserID = @strCharID, strElmoKnightsName = @strKnightsID, nElmoLoyalty = @nLoyalty WHERE shIndex = @nIndex
            
    FETCH NEXT FROM job2
    INTO @nIndex, @strCharID, @strKnightsID, @nLoyalty
END
CLOSE job2
DEALLOCATE job2

IF exists (select * from sysobjects where id = object_id(N'[dbo].[KUSER_RATING]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KUSER_RATING]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EUSER_RATING]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EUSER_RATING]

SET NOCOUNT OFF
