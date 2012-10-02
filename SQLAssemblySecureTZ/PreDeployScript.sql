
-- Enable CLR on the SQL Server
--sp_configure 'show advanced options', 1;
--GO
--RECONFIGURE;
--GO
--sp_configure 'clr enabled', 1;
--GO
--RECONFIGURE;
--GO


USE [TestDB]
GO

IF  EXISTS (SELECT * FROM sys.assemblies asms WHERE asms.name = N'SQLAssemblySecureTZ' and is_user_defined = 1)
DROP ASSEMBLY [SQLAssemblySecureTZ]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enc]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Dec]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dec]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Dec]
GO
