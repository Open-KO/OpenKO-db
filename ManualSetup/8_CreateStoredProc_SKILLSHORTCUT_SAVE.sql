/****** Object:  Stored Procedure dbo.SKILLSHORTCUT_SAVE    Script Date: 6/6/2006 6:03:32 PM ******/



CREATE PROC [SKILLSHORTCUT_SAVE]

@strCharID 	varchar(21),
@nCount	smallint,
@strSkillData	varchar(260)

as

select strCharID from USERDATA_SKILLSHORTCUT where strCharID = @strCharID
if(@@rowcount = 0)
begin
	insert USERDATA_SKILLSHORTCUT values(@strCharID, 0, '')
end

UPDATE USERDATA_SKILLSHORTCUT
Set nCount = @nCount, strSkillData = @strSkillData
where strCharID = @strCharID
