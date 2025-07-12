USE [KN_online]
GO

CREATE TABLE [MAKE_WEAPON] (
	[byLevel] tinyint NOT NULL,
	[sClass_1] smallint,
	[sClass_2] smallint,
	[sClass_3] smallint,
	[sClass_4] smallint,
	[sClass_5] smallint,
	[sClass_6] smallint,
	[sClass_7] smallint,
	[sClass_8] smallint,
	[sClass_9] smallint,
	[sClass_10] smallint,
	[sClass_11] smallint,
	[sClass_12] smallint
	CONSTRAINT [PK_MAKE_WEAPON] PRIMARY KEY CLUSTERED ([byLevel])
)
GO
