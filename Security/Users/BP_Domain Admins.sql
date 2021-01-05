IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'BP\Domain Admins')
CREATE LOGIN [BP\Domain Admins] FROM WINDOWS
GO
CREATE USER [BP\Domain Admins] FOR LOGIN [BP\Domain Admins]
GO
