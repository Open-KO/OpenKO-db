CREATE PROCEDURE [UPDATE_PERSONAL_RANK]

AS

IF exists (select * from sysobjects where id = object_id(N'[dbo].[KPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KPERSONAL_RANK]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EPERSONAL_RANK]

CREATE TABLE [KPERSONAL_RANK]
(
    [nRank] [int] IDENTITY (1, 1) NOT NULL ,
    [strUserID] varchar(21) NOT NULL,
    [LoyaltyMonthly] int NOT NULL,
    [Loyalty] int NOT NULL,
    [nRankUP] int NOT NULL
) ON [PRIMARY]

CREATE TABLE [EPERSONAL_RANK]
(
    [nRank] [int] IDENTITY (1, 1) NOT NULL ,
    [strUserID] varchar(21) NOT NULL,
    [LoyaltyMonthly] int NOT NULL,
    [Loyalty] int NOT NULL,
    [nRankUP] int NOT NULL
) ON [PRIMARY]

INSERT  KPERSONAL_RANK
    SELECT TOP 100 strUserID, LoyaltyMonthly, Loyalty, 101
    FROM USERDATA
    WHERE Nation = 1 AND Authority NOT IN(0,250,255)
    ORDER BY LoyaltyMonthly desc, Loyalty desc

INSERT  EPERSONAL_RANK
    SELECT TOP 100 strUserID, LoyaltyMonthly, Loyalty, 101
    FROM USERDATA
    WHERE Nation = 2 AND Authority NOT IN(0,250,255)
    ORDER BY LoyaltyMonthly desc, Loyalty desc

UPDATE KPERSONAL_RANK
    SET nRankUP = R.nRank - KPERSONAL_RANK.nRank
    FROM USER_PERSONAL_RANK R
    WHERE R.strKarusUserID = KPERSONAL_RANK.strUserID

UPDATE EPERSONAL_RANK
    SET nRankUP = R.nRank - EPERSONAL_RANK.nRank
    FROM USER_PERSONAL_RANK R
    WHERE R.strElmoUserID = EPERSONAL_RANK.strUserID

DECLARE @tUpdateDate smalldatetime
SET @tUpdateDate =GETUTCDATE()

INSERT USER_PERSONAL_RANK
    SELECT E.nRank, 1, E.nRankUP, E.strUserID, E.LoyaltyMonthly, 1, K.nRankUP, K.strUserID, K.Loyalty, 1, 1, @tUpdateDate
    FROM EPERSONAL_RANK E, KPERSONAL_RANK K
    WHERE E.nRank = K.nRank
    ORDER BY E.nRank

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank = 1)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Gold Knight', nElmoCheck = 1000000, nKarusCheck = 1000000, nSalary = 1000000  WHERE nRank = 1

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 2 AND nRank<= 4)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Silver Knight', nElmoCheck = 700000, nKarusCheck = 700000, nSalary = 700000  WHERE nRank>= 2 AND nRank<= 4

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 5 AND nRank<= 9 )
UPDATE USER_PERSONAL_RANK SET strPosition = 'Mirage Knight', nElmoCheck = 500000, nKarusCheck = 500000, nSalary = 500000  WHERE nRank>= 5 AND nRank<= 9 

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 10 AND nRank<= 25)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Shadow Knight', nElmoCheck = 300000, nKarusCheck = 300000, nSalary = 300000  WHERE nRank>= 10 AND nRank<= 25

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 26 AND nRank<= 50)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Mist Knight', nElmoCheck = 100000, nKarusCheck = 100000, nSalary = 100000  WHERE nRank>= 26 AND nRank<= 50

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 51)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Training Knight', nElmoCheck = 50000, nKarusCheck = 50000, nSalary = 50000  WHERE nRank>= 51

--BEGIN TRAN
DELETE FROM USER_PERSONAL_RANK WHERE UpdateDate < @tUpdateDate
--COMMIT TRAN

IF exists (select * from sysobjects where id = object_id(N'[dbo].[KPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KPERSONAL_RANK]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EPERSONAL_RANK]

DECLARE @count int, @x int, @strPosition varchar(30)
SELECT @count = COUNT(*) FROM USER_PERSONAL_RANK

IF (@count = 0)
BEGIN
	SET @x = 1
	
	WHILE (@x <= 100)
	BEGIN
		IF (@x = 1)
			SET @strPosition = 'Gold Knight'
		IF (@x >= 2 AND @x <= 4)
			SET @strPosition = 'Silver Knight'
		IF (@x >= 5 AND @x <= 9)
			SET @strPosition = 'Mirage Knight'
		IF (@x >= 10 AND @x <= 25)
			SET @strPosition = 'Shadow Knight'
		IF (@x >= 26 AND @x <= 50)
			SET @strPosition = 'Mist Knight'
		IF (@x >= 51)
			SET @strPosition = 'Training Knight'
			
		INSERT INTO USER_PERSONAL_RANK
		(nRank, strPosition, nElmoUP, strElmoUserID, nElmoLoyaltyMonthly, nElmoCheck, nKarusUP, strKarusUserID, nKarusLoyaltyMonthly, nKarusCheck, nSalary, UpdateDate)
		VALUES(@x, @strPosition, 0, '', 0, 0, 0, '', 0, 0, 0, GetDate())
		SET @x = @x + 1
	END
	
END
