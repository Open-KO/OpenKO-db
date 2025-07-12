USE [KN_online]
GO

CREATE TABLE [MAKE_DEFENSIVE] (
	[byLevel] tinyint NOT NULL,
	[sClass_1] smallint NOT NULL,
	[sClass_2] smallint NOT NULL,
	[sClass_3] smallint NOT NULL,
	[sClass_4] smallint NOT NULL,
	[sClass_5] smallint NOT NULL,
	[sClass_6] smallint NOT NULL,
	[sClass_7] smallint NOT NULL
	CONSTRAINT [PK_MAKE_DEFENSIVE] PRIMARY KEY CLUSTERED ([byLevel])
)
GO
