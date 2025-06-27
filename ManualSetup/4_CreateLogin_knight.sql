/* Template Args:
   1. Login Name
   2. Database Name
   3. Password
 */
USE [KN_online]
GO
CREATE LOGIN [knight] WITH PASSWORD=N'knight', DEFAULT_DATABASE=[KN_online], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [knight] ENABLE
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'sysadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'securityadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'serveradmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'setupadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'processadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'diskadmin'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'dbcreator'
GO
EXEC sys.sp_addsrvrolemember @loginame = N'knight', @rolename = N'bulkadmin'
GO
