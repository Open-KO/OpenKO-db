USE [KN_online]
GO

CREATE TABLE [USER_SAVED_MAGIC] (
	[strCharID] varchar(50) NOT NULL,
	[nSkill1] int NOT NULL,
	[nDuring1] smallint NOT NULL,
	[nSkill2] int NOT NULL,
	[nDuring2] smallint NOT NULL,
	[nSkill3] int NOT NULL,
	[nDuring3] smallint NOT NULL,
	[nSkill4] int NOT NULL,
	[nDuring4] smallint NOT NULL,
	[nSkill5] int NOT NULL,
	[nDuring5] smallint NOT NULL,
	[nSkill6] int NOT NULL,
	[nDuring6] smallint NOT NULL,
	[nSkill7] int NOT NULL,
	[nDuring7] smallint NOT NULL,
	[nSkill8] int NOT NULL,
	[nDuring8] smallint NOT NULL,
	[nSkill9] int NOT NULL,
	[nDuring9] smallint NOT NULL,
	[nSkill10] int NOT NULL,
	[nDuring10] smallint NOT NULL
	CONSTRAINT [PK_USER_SAVED_MAGIC] PRIMARY KEY CLUSTERED ([strCharID])
)
GO
