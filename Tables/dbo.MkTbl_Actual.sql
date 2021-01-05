CREATE TABLE [dbo].[MkTbl_Actual]
(
[ActualRecCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
[CANCEL UNITS] [float] NULL,
[SHIPPED UNITS] [float] NULL,
[RETURN UNITS] [float] NULL,
[UNIT_PRICE] [float] NULL,
[COST_EA] [float] NULL,
[OH U] [float] NULL,
[OO U] [float] NULL,
[HELD REQ U] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Actual_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$CAT_DESCRIPTION$disallow_zero_length] CHECK ((len([CAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$COLOR DESCRIPTION$disallow_zero_length] CHECK ((len([COLOR DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$OFFER_ID$disallow_zero_length] CHECK ((len([OFFER_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$SIZE DESCRIPTION$disallow_zero_length] CHECK ((len([SIZE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$STYLE DESCRIPTION$disallow_zero_length] CHECK ((len([STYLE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual$SUBCAT_DESCRIPTION$disallow_zero_length] CHECK ((len([SUBCAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual] ADD CONSTRAINT [SSMA_PK$MkTbl_Actual] PRIMARY KEY NONCLUSTERED  ([ActualRecCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[CANCEL UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'CANCEL UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[GROSS DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'GROSS DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[HELD REQ U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'HELD REQ U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[NET DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'NET DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[OH U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'OH U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[OO U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'OO U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[RETURN UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'RETURN UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[SHIPPED UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'SHIPPED UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual].[UNIT_PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual', 'COLUMN', N'UNIT_PRICE'
GO
