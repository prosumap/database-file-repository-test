IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'BP\BPScript_BPMSSQL3')
CREATE LOGIN [BP\BPScript_BPMSSQL3] FROM WINDOWS
GO
CREATE USER [BP\BPScript_BPMSSQL3] FOR LOGIN [BP\BPScript_BPMSSQL3]
GO
