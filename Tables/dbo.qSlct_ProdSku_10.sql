CREATE TABLE [dbo].[qSlct_ProdSku_10]
(
[ProdSku_10Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event #] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event BOP Units] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qSlct_ProdSku_10] ADD CONSTRAINT [PK_qSlct_ProdSku_10] PRIMARY KEY CLUSTERED  ([ProdSku_10Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_10]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_10', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_10].[Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_10', 'COLUMN', N'Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_10].[Event BOP Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_10', 'COLUMN', N'Event BOP Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_10].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_10', 'COLUMN', N'INV7'
GO
