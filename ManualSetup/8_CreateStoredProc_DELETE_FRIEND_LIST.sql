/****** Object:  Stored Procedure dbo.DELETE_FRIEND_LIST    Script Date: 6/6/2006 6:03:33 PM ******/


-- Create by Samma
-- 2003.08.22

CREATE PROCEDURE [dbo].[DELETE_FRIEND_LIST]

@strUserID	varchar(21),
@strFriend	varchar(21),
@nRet		smallint OUTPUT

AS

DECLARE @strFriend1 varchar(21), @strFriend2 varchar(21), @strFriend3 varchar(21), @strFriend4 varchar(21), @strFriend5 varchar(21), @strFriend6 varchar(21)
DECLARE @strFriend7 varchar(21), @strFriend8 varchar(21), @strFriend9 varchar(21), @strFriend10 varchar(21), @strFriend11 varchar(21), @strFriend12 varchar(21)
DECLARE @strFriend13 varchar(21), @strFriend14 varchar(21), @strFriend15 varchar(21), @strFriend16 varchar(21), @strFriend17 varchar(21), @strFriend18 varchar(21)
DECLARE @strFriend19 varchar(21), @strFriend20 varchar(21), @strFriend21 varchar(21), @strFriend22 varchar(21), @strFriend23 varchar(21), @strFriend24 varchar(21) 

SELECT  @strFriend1 = strFriend1, @strFriend2 = strFriend2,@strFriend3 = strFriend3,@strFriend4 = strFriend4,
	@strFriend5 = strFriend5, @strFriend6 = strFriend6,@strFriend7 = strFriend7,@strFriend8 = strFriend8,
	@strFriend9 = strFriend9, @strFriend10 = strFriend10,@strFriend11 = strFriend11,@strFriend12 = strFriend12,
	@strFriend13 = strFriend13, @strFriend14 = strFriend14,@strFriend15 = strFriend15,@strFriend16 = strFriend16,
	@strFriend17 = strFriend17, @strFriend18 = strFriend18,@strFriend19 = strFriend19,@strFriend20 = strFriend20,
	@strFriend21 = strFriend21, @strFriend22 = strFriend22,@strFriend23 = strFriend23,@strFriend24 = strFriend24  From FRIEND_LIST WHERE strUserID = @strUserID

IF @@rowcount = 0
BEGIN
	SET @nRet = 1	-- fail
	RETURN
END

ELSE
BEGIN
	IF @strFriend1 = @strFriend
		UPDATE FRIEND_LIST SET strFriend1= null WHERE strUserID = @strUserID
	ELSE IF @strFriend2 = @strFriend
		UPDATE FRIEND_LIST SET strFriend2 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend3 = @strFriend
		UPDATE FRIEND_LIST SET strFriend3 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend4 = @strFriend
		UPDATE FRIEND_LIST SET strFriend4 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend5 = @strFriend
		UPDATE FRIEND_LIST SET strFriend5 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend6 = @strFriend
		UPDATE FRIEND_LIST SET strFriend6 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend7 = @strFriend
		UPDATE FRIEND_LIST SET strFriend7 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend8 = @strFriend
		UPDATE FRIEND_LIST SET strFriend8 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend9 = @strFriend
		UPDATE FRIEND_LIST SET strFriend9 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend10 = @strFriend
		UPDATE FRIEND_LIST SET strFriend10 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend11 = @strFriend
		UPDATE FRIEND_LIST SET strFriend11 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend12 = @strFriend
		UPDATE FRIEND_LIST SET strFriend12 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend13 = @strFriend
		UPDATE FRIEND_LIST SET strFriend13 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend14 = @strFriend
		UPDATE FRIEND_LIST SET strFriend14 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend15 = @strFriend
		UPDATE FRIEND_LIST SET strFriend15 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend16 = @strFriend
		UPDATE FRIEND_LIST SET strFriend16 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend17 = @strFriend
		UPDATE FRIEND_LIST SET strFriend17 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend18 = @strFriend
		UPDATE FRIEND_LIST SET strFriend18 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend19 = @strFriend
		UPDATE FRIEND_LIST SET strFriend19 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend20 = @strFriend
		UPDATE FRIEND_LIST SET strFriend20 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend21 = @strFriend
		UPDATE FRIEND_LIST SET strFriend21 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend22 = @strFriend
		UPDATE FRIEND_LIST SET strFriend22 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend23 = @strFriend
		UPDATE FRIEND_LIST SET strFriend23 = null WHERE strUserID = @strUserID
	ELSE IF @strFriend24 = @strFriend
		UPDATE FRIEND_LIST SET strFriend24 = null WHERE strUserID = @strUserID
	ELSE
	BEGIN
		SET @nRet = 2
		RETURN
	END
	
	IF @@error <> 0
		SET @nRet = 1
	ELSE
		SET @nRet = 0

END
