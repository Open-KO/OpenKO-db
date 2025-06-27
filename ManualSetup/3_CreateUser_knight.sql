/* Template Args:
   1. User Name
   2. Default Schema Name
   3. Database name
 */
USE [KN_online]
GO
CREATE USER [knight] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[knight]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'knight'
GO
