/****** Object:  Stored Procedure dbo.KNIGHTS_RATING_UPDATE    Script Date: 6/6/2006 6:03:32 PM ******/

-- Created By Sungyong 2002. 10. 14

CREATE PROCEDURE [KNIGHTS_RATING_UPDATE] AS

if exists (select * from sysobjects where id = object_id(N'[dbo].[rating_temp]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[rating_temp]
CREATE TABLE [dbo].[rating_temp] (
	[nRank] [int] IDENTITY (1, 1) NOT NULL,
	[shIndex] [smallint] NOT NULL,
	[strName] [varchar] (21) NOT NULL,
	[nPoints] [int] NOT NULL,
) ON [PRIMARY]


INSERT INTO rating_temp SELECT IDNum, IDName, Points FROM KNIGHTS ORDER BY Points DESC

CREATE  INDEX [IX_rating_rank] ON [dbo].[rating_temp]([nRank]) ON [PRIMARY]
CREATE  INDEX [IX_rating_name] ON [dbo].[rating_temp]([strName]) ON [PRIMARY]

if exists (select * from sysobjects where id = object_id(N'[dbo].[KNIGHTS_RATING]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[KNIGHTS_RATING]
EXEC sp_rename 'rating_temp','KNIGHTS_RATING'
