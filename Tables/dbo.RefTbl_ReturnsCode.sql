CREATE TABLE [dbo].[RefTbl_ReturnsCode]
(
[RetCodeCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[ReturnCode] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Grouping] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RetCodeTxt] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_ReturnsCode_CrOn] DEFAULT (getdate()),
[Reason] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_ReturnsCode] ADD CONSTRAINT [PK_RefTbl_ReturnsCode] PRIMARY KEY CLUSTERED  ([RetCodeCtr]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RefTbl_ReturnsCode$ReturnCode] ON [dbo].[RefTbl_ReturnsCode] ([ReturnCode]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_ReturnsCode]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ReturnsCode', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_ReturnsCode].[Description]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ReturnsCode', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_ReturnsCode].[Grouping]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ReturnsCode', 'COLUMN', N'Grouping'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_ReturnsCode].[RetCodeTxt]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ReturnsCode', 'COLUMN', N'RetCodeTxt'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_ReturnsCode].[ReturnCode]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ReturnsCode', 'COLUMN', N'ReturnCode'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_ReturnsCode].[ReturnCode]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_ReturnsCode', 'INDEX', N'RefTbl_ReturnsCode$ReturnCode'
GO
