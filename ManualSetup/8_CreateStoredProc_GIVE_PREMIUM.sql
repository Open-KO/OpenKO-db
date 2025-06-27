CREATE PROCEDURE [GIVE_PREMIUM]
        @strAccountID varchar(50),
        @strUserID varchar(50),
        @days int
AS
-- Declarations.
DECLARE @currentDays int, @lastDate datetime, @dateDiff int
BEGIN
        -- If the day field is null/empty or 0 (why would we add 0 days, that's just silly!)
        IF @days IS NULL or @days = 0
        BEGIN
                -- Default the days added to 30.
                SET @days = 30
        END

        -- If the account name isn't null/empty and not equal to ''
        IF @strAccountID IS NOT NULL AND @strAccountID <> ''
        BEGIN
                -- Get the current premium expire time
                SELECT @lastDate = PremiumExpire FROM TB_USER WHERE strAccountID = @strAccountID
                
                 -- How many days differ between now and the last premium expire date
                SET @dateDiff = DateDiff(dd, getDate(), @lastDate)

                -- Check if the last premium expire date is null/empty or
                -- the days between now and the last premium expire date is below or equal to 0
                IF @lastDate IS NULL or @dateDiff <= 0
                BEGIN
                         -- We default the last premium expire date to now
                        -- Otherwise if they had existing premium
                        -- Say a month ago, it'd give them up
                        -- until now, and still be "behind" the current time.
                        SET @lastDate = getDate()
                END
                 -- Update the premium date                     
                 UPDATE TB_USER SET PremiumExpire = DateAdd(dd, @days, @lastDate) WHERE strAccountID = @strAccountID
        END
        -- Now we check if the character name is being used :P
        ELSE IF @strUserID IS NOT NULL AND @strUserID <> ''
        BEGIN
                -- Get the account ID from ACCOUNT_CHAR
                SET @strAccountID = (SELECT strAccountID FROM [KN_World]..[ACCOUNT_CHAR] WHERE strCharID1 = @strUserID or strCharID2 = @strUserID or strCharID3 = @strUserID)
                SELECT @lastDate = PremiumExpire FROM TB_USER WHERE strAccountID = @strAccountID
                SET @dateDiff = DateDiff(dd, getDate(), @lastDate)
                IF @lastDate IS NULL or @dateDiff <= 0
                BEGIN
                         SET @lastDate = getDate()
                END
                 UPDATE TB_USER SET PremiumExpire = DateAdd(dd, @days, @lastDate) WHERE strAccountID = @strAccountID
        END             
         ELSE
        BEGIN
                PRINT 'You must specify an account ID (1) or character (2) to use this procedure.'
        END
END
