CREATE TABLE [dbo].[ExpMkTbl_CatalogInventory]
(
[CatInvCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OH UNITS] [float] NULL,
[OH COST] [float] NULL,
[OH TICKET] [float] NULL,
[INET CATALOG] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DEPARTMENT] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLASS] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INET COST] [float] NULL,
[INET PRICE] [float] NULL,
[CAT PRICE] [float] NULL,
[POS DATE] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_ExpMkTbl_CatalogInventory_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$CLASS$disallow_zero_length] CHECK ((len([CLASS])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$COLOR DESCRIPTION$disallow_zero_length] CHECK ((len([COLOR DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$DEPARTMENT$disallow_zero_length] CHECK ((len([DEPARTMENT])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$INET CATALOG$disallow_zero_length] CHECK ((len([INET CATALOG])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$SIZE DESCRIPTION$disallow_zero_length] CHECK ((len([SIZE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$STATUS$disallow_zero_length] CHECK ((len([STATUS])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_CatalogInventory$STYLE DESCRIPTION$disallow_zero_length] CHECK ((len([STYLE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_CatalogInventory] ADD CONSTRAINT [PK_ExpMkTbl_CatalogInventory] PRIMARY KEY CLUSTERED  ([CatInvCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[CAT PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'CAT PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[CLASS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'CLASS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[DEPARTMENT]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'DEPARTMENT'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[INET CATALOG]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'INET CATALOG'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[INET COST]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'INET COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[INET PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'INET PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[OH COST]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'OH COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[OH TICKET]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'OH TICKET'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[OH UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'OH UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[POS DATE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'POS DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[STATUS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'STATUS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_CatalogInventory].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_CatalogInventory', 'COLUMN', N'STYLE DESCRIPTION'
GO
