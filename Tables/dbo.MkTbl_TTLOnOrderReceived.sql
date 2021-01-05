CREATE TABLE [dbo].[MkTbl_TTLOnOrderReceived]
(
[CATALOG] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATALOG DESC] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REQ #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NDC] [datetime] NULL,
[PO STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP DATE] [datetime] NULL,
[RECEIPT DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APPROVED DATE] [datetime] NULL,
[FISCAL WK] [float] NULL,
[FISCAL MONTH #] [float] NULL,
[FISCAL MONTH] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FISCAL YEAR] [float] NULL,
[ORIGINAL NDC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GROUP CODE] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MERCH TYPE] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VENDOR #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VENDOR] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VENDOR STYLE #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST EA] [float] NULL,
[PO COST] [float] NULL,
[ORIG ORDERED UNITS] [float] NULL,
[CXL UNITS] [float] NULL,
[OO UNITS] [float] NULL,
[OO COST] [float] NULL,
[RECEIVED UNITS] [float] NULL,
[RECEIVED COST] [float] NULL,
[DISCOUNTS] [float] NULL,
[CHARGEBACK] [float] NULL,
[TERMS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TERMS DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSMA_RowID] [int] NOT NULL IDENTITY(1, 1),
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_TTLOnOrderReceived_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$CATALOG DESC$disallow_zero_length] CHECK ((len([CATALOG DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$CATALOG$disallow_zero_length] CHECK ((len([CATALOG])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$COLOR DESC$disallow_zero_length] CHECK ((len([COLOR DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$FISCAL MONTH$disallow_zero_length] CHECK ((len([FISCAL MONTH])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$GROUP CODE$disallow_zero_length] CHECK ((len([GROUP CODE])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$MERCH TYPE$disallow_zero_length] CHECK ((len([MERCH TYPE])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$ORIGINAL NDC$disallow_zero_length] CHECK ((len([ORIGINAL NDC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$PO #$disallow_zero_length] CHECK ((len([PO #])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$PO STATUS$disallow_zero_length] CHECK ((len([PO STATUS])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$RECEIPT DATE$disallow_zero_length] CHECK ((len([RECEIPT DATE])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$REQ #$disallow_zero_length] CHECK ((len([REQ #])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$SHIP MODE$disallow_zero_length] CHECK ((len([SHIP MODE])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$SIZE DESC$disallow_zero_length] CHECK ((len([SIZE DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$STYLE DESC$disallow_zero_length] CHECK ((len([STYLE DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$TERMS DESC$disallow_zero_length] CHECK ((len([TERMS DESC])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$TERMS$disallow_zero_length] CHECK ((len([TERMS])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$VENDOR #$disallow_zero_length] CHECK ((len([VENDOR #])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$VENDOR STYLE #$disallow_zero_length] CHECK ((len([VENDOR STYLE #])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_TTLOnOrderReceived$VENDOR$disallow_zero_length] CHECK ((len([VENDOR])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_TTLOnOrderReceived] ADD CONSTRAINT [SSMA_PK$MkTbl_TTLOnOrderReceived] PRIMARY KEY NONCLUSTERED  ([SSMA_RowID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[APPROVED DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'APPROVED DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[CATALOG]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'CATALOG'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[CATALOG DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'CATALOG DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[CHARGEBACK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'CHARGEBACK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[COLOR DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'COLOR DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[COST EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'COST EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[CXL UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'CXL UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[DISCOUNTS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'DISCOUNTS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[FISCAL MONTH]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'FISCAL MONTH'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[FISCAL MONTH #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'FISCAL MONTH #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[FISCAL WK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'FISCAL WK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[FISCAL YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'FISCAL YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[GROUP CODE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'GROUP CODE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[MERCH TYPE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'MERCH TYPE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[NDC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'NDC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[OO COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'OO COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[OO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'OO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[ORIG ORDERED UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'ORIG ORDERED UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[ORIGINAL NDC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'ORIGINAL NDC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[PO #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'PO #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[PO COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'PO COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[PO STATUS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'PO STATUS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[RECEIPT DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'RECEIPT DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[RECEIVED COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'RECEIVED COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[RECEIVED UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'RECEIVED UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[REQ #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'REQ #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[SHIP DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'SHIP DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[SHIP MODE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'SHIP MODE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[SIZE DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'SIZE DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[STYLE DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'STYLE DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[TERMS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'TERMS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[TERMS DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'TERMS DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[VENDOR]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'VENDOR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[VENDOR #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'VENDOR #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_TTLOnOrderReceived].[VENDOR STYLE #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TTLOnOrderReceived', 'COLUMN', N'VENDOR STYLE #'
GO
