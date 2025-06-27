USE [KN_online]
GO

CREATE TABLE [USER_PERSONAL_RANK] (
	[nRank] smallint NOT NULL,
	[strPosition] varchar(21) NOT NULL,
	[nElmoUP] smallint NOT NULL,
	[strElmoUserID] varchar(21),
	[nElmoLoyaltyMonthly] int,
	[nElmoCheck] int NOT NULL,
	[nKarusUP] smallint NOT NULL,
	[strKarusUserID] varchar(21),
	[nKarusLoyaltyMonthly] int,
	[nKarusCheck] int NOT NULL,
	[nSalary] int NOT NULL,
	[UpdateDate] smalldatetime NOT NULL
	CONSTRAINT [PK_USER_PERSONAL_RANK] PRIMARY KEY CLUSTERED ([nRank])
)
GO
ALTER TABLE [USER_PERSONAL_RANK] ADD CONSTRAINT [DF_USER_PERSONAL_RANK_nElmoCheck] DEFAULT 0 FOR [nElmoCheck]
GO
ALTER TABLE [USER_PERSONAL_RANK] ADD CONSTRAINT [DF_USER_PERSONAL_RANK_nKarusCheck] DEFAULT 0 FOR [nKarusCheck]
GO
