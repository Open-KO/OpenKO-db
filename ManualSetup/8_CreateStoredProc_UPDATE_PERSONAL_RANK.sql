CREATE PROCEDURE [UPDATE_PERSONAL_RANK]

AS

-- Drop temp work tables if they weren't cleaned up
IF exists (select * from sysobjects where id = object_id(N'[dbo].[KPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KPERSONAL_RANK]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EPERSONAL_RANK]

-- create temp work tables
CREATE TABLE [KPERSONAL_RANK]
(
    [nRank] [int] IDENTITY (1, 1) NOT NULL,
    [strUserID] varchar(21) NOT NULL,
    [LoyaltyMonthly] int NOT NULL,
    [Loyalty] int NOT NULL,
    [nRankUP] int NOT NULL
) ON [PRIMARY]

CREATE TABLE [EPERSONAL_RANK]
(
    [nRank] [int] IDENTITY (1, 1) NOT NULL,
    [strUserID] varchar(21) NOT NULL,
    [LoyaltyMonthly] int NOT NULL,
    [Loyalty] int NOT NULL,
    [nRankUP] int NOT NULL
) ON [PRIMARY]

-- populate temp tables
INSERT  KPERSONAL_RANK
    SELECT TOP 100
        strUserID, LoyaltyMonthly, Loyalty, 101
    FROM USERDATA
    WHERE
        Nation = 1 AND
        Authority NOT IN(0,250,255)
    ORDER BY LoyaltyMonthly desc, Loyalty desc

INSERT  EPERSONAL_RANK
    SELECT TOP 100
        strUserID, LoyaltyMonthly, Loyalty, 101
    FROM USERDATA
    WHERE
        Nation = 2 AND
        Authority NOT IN(0,250,255)
    ORDER BY LoyaltyMonthly desc, Loyalty desc

UPDATE KPERSONAL_RANK SET
    nRankUP = R.nRank - KPERSONAL_RANK.nRank
FROM USER_PERSONAL_RANK R
WHERE R.strKarusUserID = KPERSONAL_RANK.strUserID

UPDATE EPERSONAL_RANK SET
    nRankUP = R.nRank - EPERSONAL_RANK.nRank
FROM USER_PERSONAL_RANK R
WHERE R.strElmoUserID = EPERSONAL_RANK.strUserID

DECLARE @tUpdateDate smalldatetime
SET @tUpdateDate = GETUTCDATE()

-- Remove old ranking records
--BEGIN TRAN
DELETE FROM USER_PERSONAL_RANK WHERE UpdateDate < @tUpdateDate
--COMMIT TRAN

-- Note:  nElmoCheck and nKarusCheck appear to be unused, but were populated in the original script.
INSERT USER_PERSONAL_RANK
    SELECT
        E.nRank,
        CASE
            WHEN E.nRank = 1 THEN 'Gold Knight'
            WHEN E.nRank >= 2 AND E.nRank <= 4 THEN 'Silver Knight'
            WHEN E.nRank >= 5 AND E.nRank <= 9 THEN 'Mirage Knight'
            WHEN E.nRank >= 10 AND E.nRank <= 25 THEN 'Shadow Knight'
            WHEN E.nRank >= 26 AND E.nRank <= 50 THEN 'Mist Knight'
            ELSE 'Training Knight'
        END,
        E.nRankUP, E.strUserID, E.LoyaltyMonthly, 1,
        K.nRankUP, K.strUserID, K.LoyaltyMonthly, 1,
        CASE
            WHEN E.nRank = 1 THEN 1000000
            WHEN E.nRank >= 2 AND E.nRank <= 4 THEN 700000
            WHEN E.nRank >= 5 AND E.nRank <= 9 THEN 500000
            WHEN E.nRank >= 10 AND E.nRank <= 25 THEN 300000
            WHEN E.nRank >= 26 AND E.nRank <= 50 THEN 100000
            ELSE 50000
        END,
        @tUpdateDate, 0, 0
    FROM EPERSONAL_RANK E, KPERSONAL_RANK K
    WHERE E.nRank = K.nRank
    ORDER BY E.nRank

-- drop the temp tables
IF exists (select * from sysobjects where id = object_id(N'[dbo].[KPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KPERSONAL_RANK]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EPERSONAL_RANK]
