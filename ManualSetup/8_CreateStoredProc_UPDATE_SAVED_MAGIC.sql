/****** Object:  Stored Procedure dbo.UPDATE_SAVED_MAGIC    Script Date: 6/6/2006 6:03:34 PM ******/


-- Created by Samma 
-- 2003.07.04

CREATE  PROCEDURE [UPDATE_SAVED_MAGIC]
@strCharID 	varchar(21),
@Skill1		int,
@During1	smallint,
@Skill2		int,
@During2	smallint,
@Skill3		int,
@During3	smallint,
@Skill4		int,
@During4	smallint,
@Skill5		int,
@During5	smallint,
@Skill6		int,
@During6	smallint,
@Skill7		int,
@During7	smallint,
@Skill8		int,
@During8	smallint,
@Skill9		int,
@During9	smallint,
@Skill10		int,
@During10	smallint
AS

DECLARE @Row smallint
SET	@Row = 0

	SELECT @Row = COUNT(*) FROM USER_SAVED_MAGIC WHERE strCharID = @strCharID
	IF @Row = 0
	BEGIN
		INSERT INTO USER_SAVED_MAGIC (strCharID, nSkill1, nDuring1, nSkill2, nDuring2, nSkill3, nDuring3, nSkill4, nDuring4, nSkill5, nDuring5, nSkill6, nDuring6, nSkill7, nDuring7, nSkill8, nDuring8, nSkill9, nDuring9, nSkill10, nDuring10 )
					   VALUES (@strCharID, @Skill1, @During1, @Skill2, @During2, @Skill3, @During3, @Skill4, @During4, @Skill5, @During5, @Skill6, @During6, @Skill7, @During7, @Skill8, @During8, @Skill9, @During9, @Skill10, @During10 )
		RETURN
	END

	UPDATE	USER_SAVED_MAGIC
	SET
		nSkill1 = @Skill1,
		nDuring1 = @During1,
		nSkill2 = @Skill2,
		nDuring2 = @During2,
		nSkill3 = @Skill3,
		nDuring3 = @During3,
		nSkill4 = @Skill4,
		nDuring4 = @During4,
		nSkill5 = @Skill5,
		nDuring5 = @During5,
		nSkill6 = @Skill6,
		nDuring6 = @During6,
		nSkill7 = @Skill7,
		nDuring7 = @During7,
		nSkill8 = @Skill8,
		nDuring8 = @During8,
		nSkill9 = @Skill9,
		nDuring9 = @During9,
		nSkill10 = @Skill10,
		nDuring10 = @During10
	WHERE	strCharID = @strCharID
