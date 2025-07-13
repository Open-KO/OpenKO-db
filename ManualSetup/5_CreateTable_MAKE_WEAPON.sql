USE [KN_online]
GO

CREATE TABLE [MAKE_WEAPON] (
	[byLevel] tinyint NOT NULL,
	[sClass_1] smallint NOT NULL,
	[sClass_2] smallint NOT NULL,
	[sClass_3] smallint NOT NULL,
	[sClass_4] smallint NOT NULL,
	[sClass_5] smallint NOT NULL,
	[sClass_6] smallint NOT NULL,
	[sClass_7] smallint NOT NULL,
	[sClass_8] smallint NOT NULL,
	[sClass_9] smallint NOT NULL,
	[sClass_10] smallint NOT NULL,
	[sClass_11] smallint NOT NULL,
	[sClass_12] smallint NOT NULL
	CONSTRAINT [PK_MAKE_WEAPON] PRIMARY KEY CLUSTERED ([byLevel])
)
GO
