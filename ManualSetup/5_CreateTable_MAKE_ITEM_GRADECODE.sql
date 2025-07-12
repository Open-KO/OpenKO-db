USE [KN_online]
GO

CREATE TABLE [MAKE_ITEM_GRADECODE] (
	[byItemIndex] tinyint NOT NULL,
	[byGrade_1] smallint NOT NULL,
	[byGrade_2] smallint,
	[byGrade_3] smallint,
	[byGrade_4] smallint,
	[byGrade_5] smallint,
	[byGrade_6] smallint,
	[byGrade_7] smallint,
	[byGrade_8] smallint,
	[byGrade_9] smallint
	CONSTRAINT [PK_MAKE_ITEM_GRADECODE] PRIMARY KEY CLUSTERED ([byItemIndex])
)
GO
