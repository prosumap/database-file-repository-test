CREATE TABLE [dbo].[ExpMkTbl_ProdSku]
(
[OFFER_ID] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OFFER] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GO LIVE FISCAL WEEK] [float] NULL,
[GO LIVE FISCAL YEAR] [float] NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sku] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST_EA] [float] NULL,
[UNIT_PRICE] [float] NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS Date] [datetime] NULL,
[INET_Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INET_Price] [float] NULL,
[INET_OriginalPrice] [float] NULL,
[INET_Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OH UNITS] [float] NULL,
[OO UNITS] [float] NULL,
[EVENT BOP UNITS] [float] NULL,
[NDC] [datetime] NULL,
[PO STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REQ #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APPROVED DATE] [datetime] NULL,
[SSMA_RowID] [int] NOT NULL IDENTITY(1, 1),
[CrOn] [datetime] NULL CONSTRAINT [DF_ExpMkTbl_ProdSku_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExpMkTbl_ProdSku] ADD CONSTRAINT [SSMA_PK$ExpMkTbl_ProdSku] PRIMARY KEY NONCLUSTERED  ([SSMA_RowID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[APPROVED DATE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'APPROVED DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[INET_Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'INET_Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[INET_Price]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'INET_Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[INET_Status]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'INET_Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[NDC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'NDC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[OH UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'OH UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[OO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'OO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[PO #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'PO #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[PO STATUS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'PO STATUS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[POS Date]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'POS Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[REQ #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'REQ #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[Sku]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'Sku'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[UNIT_PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'UNIT_PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[Vendor Name]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'Vendor Name'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_ProdSku].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_ProdSku', 'COLUMN', N'Vendor Style'
GO
