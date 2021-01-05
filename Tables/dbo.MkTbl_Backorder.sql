CREATE TABLE [dbo].[MkTbl_Backorder]
(
[BOCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[SKU] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORDER_DATE] [datetime] NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BO UNITS] [float] NULL,
[BO COST $] [float] NULL,
[BO NET $] [float] NULL,
[BO TICKET $] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Backorder_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Backorder] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Backorder$CAT_DESCRIPTION$disallow_zero_length] CHECK ((len([CAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Backorder] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Backorder$COLOR DESCRIPTION$disallow_zero_length] CHECK ((len([COLOR DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Backorder] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Backorder$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Backorder] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Backorder$SIZE DESCRIPTION$disallow_zero_length] CHECK ((len([SIZE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Backorder] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Backorder$SKU$disallow_zero_length] CHECK ((len([SKU])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Backorder] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Backorder$STYLE DESCRIPTION$disallow_zero_length] CHECK ((len([STYLE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Backorder] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Backorder$SUBCAT_DESCRIPTION$disallow_zero_length] CHECK ((len([SUBCAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Backorder] ADD CONSTRAINT [PK_MkTbl_Backorder] PRIMARY KEY CLUSTERED  ([BOCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[BO COST $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'BO COST $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[BO NET $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'BO NET $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[BO TICKET $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'BO TICKET $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[BO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'BO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[ORDER_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'ORDER_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[SKU]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'SKU'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Backorder].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Backorder', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
