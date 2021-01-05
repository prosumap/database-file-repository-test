CREATE TABLE [dbo].[RefTbl_ArrivalKey]
(
[ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_ArrivalKey_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_ArrivalKey] ADD CONSTRAINT [RefTbl_ArrivalKey$PrimaryKey] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_ArrivalKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ArrivalKey', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_ArrivalKey].[Description]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ArrivalKey', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_ArrivalKey].[ID]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ArrivalKey', 'COLUMN', N'ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_ArrivalKey].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ArrivalKey', 'CONSTRAINT', N'RefTbl_ArrivalKey$PrimaryKey'
GO
