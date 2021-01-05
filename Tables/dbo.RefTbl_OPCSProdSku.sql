CREATE TABLE [dbo].[RefTbl_OPCSProdSku]
(
[PrdoSkuCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[INV] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Base#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BP Base] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Upccd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description 1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spec 1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spec 2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS Date] [datetime] NULL,
[Cost] [float] NULL,
[On Hand Qty] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSProdSku_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSProdSku] ADD CONSTRAINT [RefTbl_OPCSProdSku$PrimaryKey] PRIMARY KEY CLUSTERED  ([PrdoSkuCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Base#]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Base#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[BP Base]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'BP Base'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Description 1]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Description 1'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[INV]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'INV'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[On Hand Qty]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'On Hand Qty'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[POS Date]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'POS Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Spec 1]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Spec 1'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Spec 2]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Spec 2'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Upccd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Upccd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Vendor Color]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Vendor Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Vendor Name]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Vendor Name'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'COLUMN', N'Vendor Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSProdSku].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSProdSku', 'CONSTRAINT', N'RefTbl_OPCSProdSku$PrimaryKey'
GO
