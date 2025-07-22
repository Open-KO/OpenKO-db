USE [KN_online]
GO

CREATE TABLE [MAKE_ITEM_GRADECODE] (
	[byItemIndex] tinyint NOT NULL,
	[byGrade_1] smallint NOT NULL,
	[byGrade_2] smallint NOT NULL,
	[byGrade_3] smallint NOT NULL,
	[byGrade_4] smallint NOT NULL,
	[byGrade_5] smallint NOT NULL,
	[byGrade_6] smallint NOT NULL,
	[byGrade_7] smallint NOT NULL,
	[byGrade_8] smallint NOT NULL,
	[byGrade_9] smallint NOT NULL
	CONSTRAINT [PK_MAKE_ITEM_GRADECODE] PRIMARY KEY CLUSTERED ([byItemIndex])
)
GO
