CREATE TABLE [dbo].[MkTbl_EventPerformance]
(
[EPerfCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [datetime] NULL,
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
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_EventPerformance_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Catalog$disallow_zero_length] CHECK ((len([Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Ord_Fiscal_Month#$disallow_zero_length] CHECK ((len([Ord_Fiscal_Month#])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Ord_Fiscal_Month$disallow_zero_length] CHECK ((len([Ord_Fiscal_Month])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Ord_Fiscal_Qtr$disallow_zero_length] CHECK ((len([Ord_Fiscal_Qtr])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Ord_Fiscal_Wk$disallow_zero_length] CHECK ((len([Ord_Fiscal_Wk])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Ord_Fiscal_Year$disallow_zero_length] CHECK ((len([Ord_Fiscal_Year])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Ord_Season$disallow_zero_length] CHECK ((len([Ord_Season])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Ord_YYYYWK$disallow_zero_length] CHECK ((len([Ord_YYYYWK])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [SSMA_CC$MkTbl_EventPerformance$Status$disallow_zero_length] CHECK ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_EventPerformance] ADD CONSTRAINT [PK_MkTbl_EventPerformance] PRIMARY KEY CLUSTERED  ([EPerfCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Dmnd_Cost$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Dmnd_Cost$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Dmnd_Gross$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Dmnd_Gross$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Dmnd_Net$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Dmnd_Net$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Dmnd_Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Dmnd_Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Ord_Fiscal_Month]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Ord_Fiscal_Month'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Ord_Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Ord_Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Ord_Fiscal_Qtr]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Ord_Fiscal_Qtr'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Ord_Fiscal_Wk]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Ord_Fiscal_Wk'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Ord_Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Ord_Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Ord_Season]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Ord_Season'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Ord_YYYYWK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Ord_YYYYWK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_EventPerformance].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_EventPerformance', 'COLUMN', N'Status'
GO
