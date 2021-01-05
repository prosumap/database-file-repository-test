CREATE TABLE [dbo].[MkTbl_Projection]
(
[ProjCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GROSS DEMAND] [float] NULL,
[NET DEMAND] [float] NULL,
[DEMAND COST] [float] NULL,
[DEMAND UNITS] [float] NULL,
[UNIT_PRICE] [float] NULL,
[COST_EA] [float] NULL,
[OH U] [float] NULL,
[OO U] [float] NULL,
[HELD REQ U] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Projection_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$CAT_DESCRIPTION$disallow_zero_length] CHECK ((len([CAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$COLOR DESCRIPTION$disallow_zero_length] CHECK ((len([COLOR DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$OFFER_ID$disallow_zero_length] CHECK ((len([OFFER_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$SIZE DESCRIPTION$disallow_zero_length] CHECK ((len([SIZE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$STYLE DESCRIPTION$disallow_zero_length] CHECK ((len([STYLE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Projection$SUBCAT_DESCRIPTION$disallow_zero_length] CHECK ((len([SUBCAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Projection] ADD CONSTRAINT [SSMA_PK$MkTbl_Projection] PRIMARY KEY NONCLUSTERED  ([ProjCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[GROSS DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'GROSS DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[HELD REQ U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'HELD REQ U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[NET DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'NET DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[OH U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'OH U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[OO U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'OO U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Projection].[UNIT_PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Projection', 'COLUMN', N'UNIT_PRICE'
GO
