USE [KN_online]
GO

CREATE TABLE [MAGIC] (
	[MagicNum] int NOT NULL,
	[EnName] varchar(50),
	[KrName] varchar(50),
	[Description] varchar(100),
	[BeforeAction] tinyint NOT NULL,
	[TargetAction] tinyint NOT NULL,
	[SelfEffect] tinyint NOT NULL,
	[FlyingEffect] tinyint NOT NULL,
	[TargetEffect] smallint NOT NULL,
	[Moral] tinyint NOT NULL,
	[SkillLevel] smallint NOT NULL,
	[Skill] smallint NOT NULL,
	[Msp] smallint NOT NULL,
	[HP] smallint NOT NULL,
	[ItemGroup] tinyint NOT NULL,
	[UseItem] int NOT NULL,
	[CastTime] tinyint NOT NULL,
	[ReCastTime] tinyint NOT NULL,
	[SuccessRate] tinyint NOT NULL,
	[Type1] tinyint NOT NULL,
	[Type2] tinyint NOT NULL,
	[Range] smallint NOT NULL,
	[Etc] tinyint NOT NULL,
	[Event] int
	CONSTRAINT [PK_MAGIC] PRIMARY KEY CLUSTERED ([MagicNum])
)
GO
