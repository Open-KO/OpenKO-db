/****** Object:  Stored Procedure dbo.CHANGE_KNIGHTS_CAPE    Script Date: 6/6/2006 6:03:32 PM ******/

-- created by sungyong 2003.08.01

CREATE PROCEDURE [CHANGE_KNIGHTS_CAPE]
@KnightsIndex	smallint,
@CapeIndex	smallint

AS

UPDATE KNIGHTS SET sCape  = @CapeIndex WHERE IDNum = @KnightsIndex
