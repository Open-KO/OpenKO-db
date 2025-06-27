/****** Object:  Stored Procedure dbo.UPDATE_USER_DATA    Script Date: 6/6/2006 6:03:32 PM ******/


-- sungyong 2003.04.09
-- modifed by sungyong 2004.01.30
-- modifed by arycoat 2004.04.22 : 월간기여도(LoyaltyMonthly) 추가
-- modifed by sungyong 2004.04.29 : 업데이트시간추가

CREATE  PROCEDURE [UPDATE_USER_DATA]
	@id 		varchar(21),
	@Nation	tinyint,
	@Race		tinyint,
	@Class		smallint,
	@HairColor	tinyint,
	@Rank		tinyint,
	@Title		tinyint,
	@Level		tinyint,
	@Exp		int,
	@Loyalty	int,
	@Face		tinyint, 
	@City		tinyint,	
	@Knights	smallint,
	@Fame		tinyint,
	@Hp		smallint,
	@Mp		smallint, 
	@Sp		smallint,
	@Str		tinyint,
	@Sta		tinyint,
	@Dex		tinyint,
	@Intel		tinyint,
	@Cha		tinyint,
	@Authority	tinyint,
	@Points		tinyint,	
	@Gold		int,
	@Zone		tinyint,
	@Bind		smallint,
	@PX		int,
	@PZ		int,
	@PY		int,
	@dwTime	int,
	@QuestTotal     smallint,
	@strSkill	varchar(20),
	@strItem	varchar(400),
	@strSerial	varchar(400),
	@strQuest	varchar(400),
	@MannerPoint   int,
	@LoyaltyMonthly	int
AS

DECLARE @KnightsIndex smallint

IF @Zone > 2		-- battle zone user
BEGIN
	SELECT @KnightsIndex=Knights FROM USERDATA WHERE strUserId=@id
	IF @KnightsIndex = -1	-- expel user
	BEGIN
		SET @Knights = 0
		SET @Fame = 0
	END
END

UPDATE	USERDATA
Set
	Nation		= @Nation,
	Race		= @Race,
	Class		= @Class,
	HairColor	= @HairColor,
	Rank		= @Rank,
	Title		= @Title,
	[Level]		= @Level,
	[Exp]		= @Exp,
	Loyalty		= @Loyalty,
	Face		= @Face, 
	City		= @City,	
	Knights		= @Knights,
	Fame		= @Fame,
	Hp		= @Hp,
	Mp		= @Mp, 
	Sp		= @Sp,
	Strong		= @Str,
	Sta		= @Sta,
	Dex		= @Dex,
	Intel		= @Intel,
	Cha		= @Cha,
	Authority	= @Authority,
	Points		= @Points,
	Gold		= @Gold,
	[Zone]		= @Zone,
	Bind		= @Bind,
	PX		= @PX,
	PZ		= @PZ,
	PY		= @PY,
	dwTime		= @dwTime,
	strSkill		= @strSkill,
	strItem		= @strItem,
	strSerial		= @strSerial,	-- 2002 11. 12 
	sQuestCount	= @QuestTotal,	-- 2003.04.09
	strQuest		= @strQuest,	-- 2003.04.09
	MannerPoint 	= @MannerPoint,	-- 2004.01.30
	LoyaltyMonthly	= @LoyaltyMonthly,	-- 2004.04.22
	UpdateTime       = getdate()
WHERE	strUserId	= @id
