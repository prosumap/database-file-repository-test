CREATE TABLE [dbo].[MkTbl_FPMDDetail_6]
(
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATALOG] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATALOG DESC] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GROUP CODE] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MERCH TYPE] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORIGINAL PRICE] [float] NULL,
[CURRENT PRICE] [float] NULL,
[CURRENT COST] [float] NULL,
[GROSS DEMAND] [float] NULL,
[NET DEMAND] [float] NULL,
[DEMAND COST] [float] NULL,
[DEMAND UNITS] [float] NULL,
[OH UNITS] [float] NULL,
[OH COST $] [float] NULL,
[OH TICKET $] [float] NULL,
[OO UNITS] [float] NULL,
[OO COST $] [float] NULL,
[OO TICKET $] [float] NULL,
[POS Date] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_FPMDDetail_6_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$CATALOG DESC$disallow_zero_length] CHECK ((len([CATALOG DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$CATALOG$disallow_zero_length] CHECK ((len([CATALOG])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$COLOR DESC$disallow_zero_length] CHECK ((len([COLOR DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$GROUP CODE$disallow_zero_length] CHECK ((len([GROUP CODE])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$MERCH TYPE$disallow_zero_length] CHECK ((len([MERCH TYPE])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$SIZE DESC$disallow_zero_length] CHECK ((len([SIZE DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$STATUS$disallow_zero_length] CHECK ((len([STATUS])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_FPMDDetail_6$STYLE DESC$disallow_zero_length] CHECK ((len([STYLE DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_FPMDDetail_6] ADD CONSTRAINT [SSMA_PK$MkTbl_FPMDDetail_6] PRIMARY KEY NONCLUSTERED  ([INV10]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[CATALOG]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'CATALOG'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[CATALOG DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'CATALOG DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[COLOR DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'COLOR DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[CURRENT COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'CURRENT COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[CURRENT PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'CURRENT PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[GROSS DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'GROSS DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[GROUP CODE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'GROUP CODE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[MERCH TYPE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'MERCH TYPE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[NET DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'NET DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[OH COST $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'OH COST $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[OH TICKET $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'OH TICKET $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[OH UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'OH UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[OO COST $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'OO COST $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[OO TICKET $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'OO TICKET $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[OO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'OO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[ORIGINAL PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'ORIGINAL PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[POS Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'POS Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[SIZE DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'SIZE DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[STATUS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'STATUS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_FPMDDetail_6].[STYLE DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FPMDDetail_6', 'COLUMN', N'STYLE DESC'
GO
