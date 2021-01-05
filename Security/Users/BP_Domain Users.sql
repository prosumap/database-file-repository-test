IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'BP\Domain Users')
CREATE LOGIN [BP\Domain Users] FROM WINDOWS
GO
CREATE USER [BP\Domain Users] FOR LOGIN [BP\Domain Users] WITH DEFAULT_SCHEMA=[db_datareader]
GO
