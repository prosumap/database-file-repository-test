CREATE TABLE [dbo].[MkTbl_DailyReverseShip]
(
[DailyRevCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Trans#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReverseShip_Date] [datetime2] (0) NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Catalog] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReverseShip_Net$] [float] NULL,
[ReverseShip_Gross$] [float] NULL,
[ReverseShip_Cost$] [float] NULL,
[ReverseShip_Units] [float] NULL,
[ReverseShip_RsnCd] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReverseShip_RsnDesc] [nvarchar] (54) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReverseShip_Fiscal_Wk] [float] NULL,
[ReverseShip_Fiscal_Month#] [float] NULL,
[ReverseShip_Fiscal_Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReverseShip_Fiscal_Qtr] [float] NULL,
[ReverseShip_Fiscal_Year] [float] NULL,
[ReverseShip_Season] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReverseShip_YYYYWK] [int] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_DailyReverseShip_CrOn] DEFAULT (getdate()),
[DSeq] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$Line_Catalog$disallow_zero_length] CHECK ((len([Line_Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$Order#$disallow_zero_length] CHECK ((len([Order#])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$ReverseShip_Fiscal_Month$disallow_zero_length] CHECK ((len([ReverseShip_Fiscal_Month])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$ReverseShip_RsnCd$disallow_zero_length] CHECK ((len([ReverseShip_RsnCd])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$ReverseShip_RsnDesc$disallow_zero_length] CHECK ((len([ReverseShip_RsnDesc])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$ReverseShip_Season$disallow_zero_length] CHECK ((len([ReverseShip_Season])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$Status$disallow_zero_length] CHECK ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_DailyReverseShip$Trans#$disallow_zero_length] CHECK ((len([Trans#])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_DailyReverseShip] ADD CONSTRAINT [PK_MkTbl_DailyReverseShip] PRIMARY KEY CLUSTERED  ([DailyRevCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[Line_Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'Line_Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[Order#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'Order#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Cost$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Cost$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Fiscal_Month]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Fiscal_Month'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Fiscal_Qtr]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Fiscal_Qtr'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Fiscal_Wk]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Fiscal_Wk'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Gross$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Gross$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Net$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Net$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_RsnCd]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_RsnCd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_RsnDesc]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_RsnDesc'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Season]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Season'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[ReverseShip_YYYYWK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'ReverseShip_YYYYWK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_DailyReverseShip].[Trans#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_DailyReverseShip', 'COLUMN', N'Trans#'
GO
