-- Attempts to update the claim status for USER_KNIGHTS_RANK/USER_PERSONAL_RANK
CREATE PROCEDURE [CLAIM_USER_RANK_STIPEND]
    -- Possible return values:
    -- 0:   Valid request, claim status updated
    -- 1:   Valid request, but stipend has already been claimed.  Update cache record
    -- 2:   Request data doesn't match database, reload cache
    -- 255: Invalid inputs or unexpected error
    @nRet   tinyint OUTPUT,

    -- 0: USER_KNIGHTS_RANK
    -- 1: USER_PERSONAL_RANK
    @type   tinyint,
    @rank   tinyint,
    @nation tinyint,
    @charId varchar(21)
AS

DECLARE @isClaimed tinyint,
        @rankHolder varchar(21)

-- Validate Inputs
-- Type value is 0 or 1
-- Rank value is 1-100
-- Nation value is 1 or 2
IF @type NOT IN (0, 1) OR
   @rank > 100 OR @rank = 0 OR
   @nation NOT IN (1, 2)
BEGIN
    SET @nRet = 255
    RETURN
END

-- Begin TP fence
BEGIN TRAN

IF @type = 0
BEGIN
    SELECT
        @isClaimed = IIF(@nation = 1, isClaimedKarus, isClaimedElmo),
        @rankHolder = IIF(@nation = 1, strKarusUserID, strElmoUserID)
    FROM USER_KNIGHTS_RANK
    WHERE
        shIndex = @rank
END
ELSE
BEGIN
    SELECT
        @isClaimed = IIF(@nation = 1, isClaimedKarus, isClaimedElmo),
        @rankHolder = IIF(@nation = 1, strKarusUserID, strElmoUserID)
    FROM USER_PERSONAL_RANK
    WHERE
        nRank = @rank
END

-- Ebenezer cache out of sync
IF @rankHolder != @charId
BEGIN
    ROLLBACK TRAN
    SET @nRet = 2
    RETURN
END

-- Stipend already claimed
IF @isClaimed = 1
BEGIN
    ROLLBACK TRAN
    SET @nRet = 1
    RETURN
END

-- Valid request, mark as claimed
IF @nation = 1
    IF @type = 0
        UPDATE USER_KNIGHTS_RANK SET isClaimedKarus = 1 WHERE shIndex = @rank
    ELSE
        UPDATE USER_PERSONAL_RANK SET isClaimedKarus = 1 WHERE nRank = @rank
ELSE
    IF @type = 0
        UPDATE USER_KNIGHTS_RANK SET isClaimedElmo = 1 WHERE shIndex = @rank
    ELSE
        UPDATE USER_PERSONAL_RANK SET isClaimedElmo = 1 WHERE nRank = @rank

-- Generic error catch
IF @@ERROR <> 0
BEGIN
    ROLLBACK TRAN
    SET @nRet = 255
    RETURN
END

COMMIT TRAN
SET @nRet =  0
