CREATE TABLE [dbo].[MkTbl_SKUMaster]
(
[SkuCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sku] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OFFER SKU ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUB_CATEGORY_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Offer Product Id] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BP STYLE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTOR1] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTOR2] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BP_UPCCD] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST_EA] [float] NULL,
[UNIT_PRICE] [float] NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS Date] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_SKUMaster_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$BP STYLE$disallow_zero_length] CHECK ((len([BP STYLE])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$BP_UPCCD$disallow_zero_length] CHECK ((len([BP_UPCCD])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$CATEGORY_ID$disallow_zero_length] CHECK ((len([CATEGORY_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$CAT_DESCRIPTION$disallow_zero_length] CHECK ((len([CAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$COLOR DESCRIPTION$disallow_zero_length] CHECK ((len([COLOR DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$DESCRIPTOR1$disallow_zero_length] CHECK ((len([DESCRIPTOR1])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$DESCRIPTOR2$disallow_zero_length] CHECK ((len([DESCRIPTOR2])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$OFFER SKU ID$disallow_zero_length] CHECK ((len([OFFER SKU ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$OFFER_ID$disallow_zero_length] CHECK ((len([OFFER_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$Offer Product Id$disallow_zero_length] CHECK ((len([Offer Product Id])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$SIZE DESCRIPTION$disallow_zero_length] CHECK ((len([SIZE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$STYLE DESCRIPTION$disallow_zero_length] CHECK ((len([STYLE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$SUBCAT_DESCRIPTION$disallow_zero_length] CHECK ((len([SUBCAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$SUB_CATEGORY_ID$disallow_zero_length] CHECK ((len([SUB_CATEGORY_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$Sku$disallow_zero_length] CHECK ((len([Sku])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$Vendor #$disallow_zero_length] CHECK ((len([Vendor #])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$Vendor Color$disallow_zero_length] CHECK ((len([Vendor Color])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$Vendor Name$disallow_zero_length] CHECK ((len([Vendor Name])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_SKUMaster$Vendor Style$disallow_zero_length] CHECK ((len([Vendor Style])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_SKUMaster] ADD CONSTRAINT [PK_MkTbl_SKUMaster] PRIMARY KEY CLUSTERED  ([SkuCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[BP STYLE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'BP STYLE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[BP_UPCCD]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'BP_UPCCD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[CATEGORY_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'CATEGORY_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[DESCRIPTOR1]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'DESCRIPTOR1'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[DESCRIPTOR2]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'DESCRIPTOR2'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[Offer Product Id]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'Offer Product Id'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[OFFER SKU ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'OFFER SKU ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[POS Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'POS Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[Sku]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'Sku'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[SUB_CATEGORY_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'SUB_CATEGORY_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[UNIT_PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'UNIT_PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[Vendor Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'Vendor Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[Vendor Name]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'Vendor Name'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_SKUMaster].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_SKUMaster', 'COLUMN', N'Vendor Style'
GO
