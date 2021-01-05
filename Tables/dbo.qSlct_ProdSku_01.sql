CREATE TABLE [dbo].[qSlct_ProdSku_01]
(
[ProdSku_01Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sku] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST_EA] [float] NULL,
[Return Rate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INET_Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INET_Price] [float] NULL,
[INET_OriginalPrice] [float] NULL,
[INET_Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OH UNITS] [float] NULL,
[OO U] [float] NULL,
[Req U] [float] NULL,
[NDC DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO # STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REQ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APPR DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qSlct_ProdSku_01] ADD CONSTRAINT [PK_qSlct_ProdSku_01] PRIMARY KEY CLUSTERED  ([ProdSku_01Ctr]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [qSlct_ProdSku_01$OFFER_ID] ON [dbo].[qSlct_ProdSku_01] ([OFFER_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[APPR DATE]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'APPR DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[INET_Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'INET_Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[INET_OriginalPrice]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'INET_OriginalPrice'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[INET_Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'INET_Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[INET_Status]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'INET_Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[NDC DATE]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'NDC DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[OH UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'OH UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[OO U]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'OO U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[PO]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'PO'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[PO # STATUS]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'PO # STATUS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[REQ]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'REQ'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[Req U]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'Req U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[Return Rate]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'Return Rate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[Sku]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'Sku'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[Vendor Style #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'COLUMN', N'Vendor Style #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_01].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_01', 'INDEX', N'qSlct_ProdSku_01$OFFER_ID'
GO
