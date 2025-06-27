CREATE PROCEDURE [INSERT_PROGRAM_CHECK_USER]
	@strAccountID varchar(21),
	@strCharID    varchar(21),
	@HackToolName varchar(1024)
AS
BEGIN
	INSERT INTO PROGRAMLIST_LOG (strAccountID, strCharID, strHackToolName) VALUES(@strAccountID, @strCharID, @HackToolName)
END
