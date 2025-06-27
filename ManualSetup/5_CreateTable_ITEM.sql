USE [KN_online]
GO

CREATE TABLE [ITEM] (
	[Num] int NOT NULL,
	[strName] varchar(50) NOT NULL,
	[Kind] tinyint NOT NULL,
	[Slot] tinyint NOT NULL,
	[Race] tinyint NOT NULL,
	[Class] tinyint NOT NULL,
	[Damage] smallint NOT NULL,
	[Delay] smallint NOT NULL,
	[Range] smallint NOT NULL,
	[Weight] smallint NOT NULL,
	[Duration] smallint NOT NULL,
	[BuyPrice] int NOT NULL,
	[SellPrice] int NOT NULL,
	[Ac] smallint NOT NULL,
	[Countable] tinyint NOT NULL,
	[Effect1] int NOT NULL,
	[Effect2] int NOT NULL,
	[ReqLevel] tinyint NOT NULL,
	[ReqLevelMax] tinyint NOT NULL,
	[ReqRank] tinyint NOT NULL,
	[ReqTitle] tinyint NOT NULL,
	[ReqStr] tinyint NOT NULL,
	[ReqSta] tinyint NOT NULL,
	[ReqDex] tinyint NOT NULL,
	[ReqIntel] tinyint NOT NULL,
	[ReqCha] tinyint NOT NULL,
	[SellingGroup] tinyint NOT NULL,
	[ItemType] tinyint NOT NULL,
	[Hitrate] smallint NOT NULL,
	[Evasionrate] smallint NOT NULL,
	[DaggerAc] smallint NOT NULL,
	[SwordAc] smallint NOT NULL,
	[MaceAc] smallint NOT NULL,
	[AxeAc] smallint NOT NULL,
	[SpearAc] smallint NOT NULL,
	[BowAc] smallint NOT NULL,
	[FireDamage] tinyint NOT NULL,
	[IceDamage] tinyint NOT NULL,
	[LightningDamage] tinyint NOT NULL,
	[PoisonDamage] tinyint NOT NULL,
	[HPDrain] tinyint NOT NULL,
	[MPDamage] tinyint NOT NULL,
	[MPDrain] tinyint NOT NULL,
	[MirrorDamage] tinyint NOT NULL,
	[Droprate] tinyint NOT NULL,
	[StrB] smallint NOT NULL,
	[StaB] smallint NOT NULL,
	[DexB] smallint NOT NULL,
	[IntelB] smallint NOT NULL,
	[ChaB] smallint NOT NULL,
	[MaxHpB] smallint NOT NULL,
	[MaxMpB] smallint NOT NULL,
	[FireR] smallint NOT NULL,
	[ColdR] smallint NOT NULL,
	[LightningR] smallint NOT NULL,
	[MagicR] smallint NOT NULL,
	[PoisonR] smallint NOT NULL,
	[CurseR] smallint NOT NULL
	CONSTRAINT [PK_ITEM] PRIMARY KEY CLUSTERED ([Num])
)
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Kind] DEFAULT 0 FOR [Kind]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Slot] DEFAULT 0 FOR [Slot]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Race] DEFAULT 0 FOR [Race]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Class] DEFAULT 1 FOR [Class]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Damage] DEFAULT 0 FOR [Damage]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Delay] DEFAULT 0 FOR [Delay]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Range] DEFAULT 0 FOR [Range]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Weight] DEFAULT 0 FOR [Weight]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_BuyPrice] DEFAULT 0 FOR [BuyPrice]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Ac] DEFAULT 0 FOR [Ac]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_DaggerAc] DEFAULT 0 FOR [DaggerAc]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_SwordAc] DEFAULT 0 FOR [SwordAc]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_MaceAc] DEFAULT 0 FOR [MaceAc]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_AxeAc] DEFAULT 0 FOR [AxeAc]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_SpearAc] DEFAULT 0 FOR [SpearAc]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_BowAc] DEFAULT 0 FOR [BowAc]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_MirrorDamage] DEFAULT 0 FOR [MirrorDamage]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_Droprate] DEFAULT 0 FOR [Droprate]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_StrB] DEFAULT 0 FOR [StrB]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_StaB] DEFAULT 0 FOR [StaB]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_DexB] DEFAULT 0 FOR [DexB]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_IntelB] DEFAULT 0 FOR [IntelB]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_ChaB] DEFAULT 0 FOR [ChaB]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_FireR] DEFAULT 0 FOR [FireR]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_ColdR] DEFAULT 0 FOR [ColdR]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_LightningR] DEFAULT 0 FOR [LightningR]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_MagicR] DEFAULT 0 FOR [MagicR]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_PoisonR] DEFAULT 0 FOR [PoisonR]
GO
ALTER TABLE [ITEM] ADD CONSTRAINT [DF_ITEM_CurseR] DEFAULT 0 FOR [CurseR]
GO
