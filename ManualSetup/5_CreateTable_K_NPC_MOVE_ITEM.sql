USE [KN_online]
GO

CREATE TABLE [K_NPC_MOVE_ITEM] (
	[sCastleIndex] smallint NOT NULL,
	[byChangeItem] int,
	[sChangeSid] int,
	[byMoveItem] int,
	[sMoveMinX] smallint,
	[sMoveMinY] smallint,
	[sMoveMaxX] smallint,
	[sMoveMaxY] smallint
	CONSTRAINT [PK_K_NPC_MOVE_ITEM] PRIMARY KEY CLUSTERED ([sCastleIndex])
)
GO
