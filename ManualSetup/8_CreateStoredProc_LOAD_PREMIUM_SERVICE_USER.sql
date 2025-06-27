CREATE PROCEDURE [LOAD_PREMIUM_SERVICE_USER] 
        @AccountID varchar(21),
        @type int output, 
        @days int output 
AS 
BEGIN 
        DECLARE @PremiumExpire datetime

        SELECT @PremiumExpire = PremiumExpire FROM TB_USER WHERE strAccountID = @AccountID
        SET @days = DateDiff(dd, GetDate(), @PremiumExpire)
        SET @type = 1
        IF @days <= 0 OR @@ERROR <> 0 OR @days IS NULL
        BEGIN
                SET @type = 0
                SET @days = 0
        END
END
