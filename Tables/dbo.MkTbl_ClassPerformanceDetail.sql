CREATE TABLE [dbo].[MkTbl_ClassPerformanceDetail]
(
[CPerfCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [datetime] NULL,
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dmnd_Units] [float] NULL,
[Dmnd_Cost$] [float] NULL,
[Dmnd_Net$] [float] NULL,
[Dmnd_Gross$] [float] NULL,
[Ord_Fiscal_Wk] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ord_Fiscal_Month#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ord_Fiscal_Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ord_Fiscal_Qtr] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ord_Fiscal_Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ord_Season] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ord_YYYYWK] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_ClassPerformanceDetail_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Catalog$disallow_zero_length] CHECK ((len([Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Class$disallow_zero_length] CHECK ((len([Class])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Color$disallow_zero_length] CHECK ((len([Color])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Department$disallow_zero_length] CHECK ((len([Department])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Ord_Fiscal_Month#$disallow_zero_length] CHECK ((len([Ord_Fiscal_Month#])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Ord_Fiscal_Month$disallow_zero_length] CHECK ((len([Ord_Fiscal_Month])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Ord_Fiscal_Qtr$disallow_zero_length] CHECK ((len([Ord_Fiscal_Qtr])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Ord_Fiscal_Wk$disallow_zero_length] CHECK ((len([Ord_Fiscal_Wk])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Ord_Fiscal_Year$disallow_zero_length] CHECK ((len([Ord_Fiscal_Year])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Ord_Season$disallow_zero_length] CHECK ((len([Ord_Season])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Ord_YYYYWK$disallow_zero_length] CHECK ((len([Ord_YYYYWK])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Size$disallow_zero_length] CHECK ((len([Size])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Status$disallow_zero_length] CHECK ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ClassPerformanceDetail$Style$disallow_zero_length] CHECK ((len([Style])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ClassPerformanceDetail] ADD CONSTRAINT [PK_MkTbl_ClassPerformanceDetail] PRIMARY KEY CLUSTERED  ([CPerfCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Dmnd_Cost$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Dmnd_Cost$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Dmnd_Gross$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Dmnd_Gross$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Dmnd_Net$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Dmnd_Net$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Dmnd_Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Dmnd_Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Ord_Fiscal_Month]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Ord_Fiscal_Month'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Ord_Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Ord_Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Ord_Fiscal_Qtr]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Ord_Fiscal_Qtr'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Ord_Fiscal_Wk]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Ord_Fiscal_Wk'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Ord_Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Ord_Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Ord_Season]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Ord_Season'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Ord_YYYYWK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Ord_YYYYWK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ClassPerformanceDetail].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ClassPerformanceDetail', 'COLUMN', N'Style'
GO
