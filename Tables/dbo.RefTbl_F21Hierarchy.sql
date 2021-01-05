CREATE TABLE [dbo].[RefTbl_F21Hierarchy]
(
[F21HierarchyCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Return Rate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_F21Hierarchy] ADD CONSTRAINT [PK_RefTbl_F21Hierarchy] PRIMARY KEY CLUSTERED  ([F21HierarchyCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_F21Hierarchy]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_F21Hierarchy', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_F21Hierarchy].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_F21Hierarchy', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_F21Hierarchy].[Class Code]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_F21Hierarchy', 'COLUMN', N'Class Code'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_F21Hierarchy].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_F21Hierarchy', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_F21Hierarchy].[Department Code]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_F21Hierarchy', 'COLUMN', N'Department Code'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_F21Hierarchy].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_F21Hierarchy', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[RefTbl_F21Hierarchy].[Return Rate]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_F21Hierarchy', 'COLUMN', N'Return Rate'
GO
