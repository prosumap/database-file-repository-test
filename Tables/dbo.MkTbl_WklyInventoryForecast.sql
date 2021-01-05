CREATE TABLE [dbo].[MkTbl_WklyInventoryForecast]
(
[InvFrcstCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BOP UNITS] [float] NULL,
[WEEK_BEGIN_DATE] [datetime] NULL,
[WEEK_END_DATE] [datetime] NULL,
[FISCAL_WEEK] [float] NULL,
[FISCAL_MONTH] [float] NULL,
[FISCAL_QUARTER] [float] NULL,
[FISCAL_YEAR] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_WklyInventoryForecast_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_WklyInventoryForecast] ADD CONSTRAINT [SSMA_CC$MkTbl_WklyInventoryForecast$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_WklyInventoryForecast] ADD CONSTRAINT [SSMA_CC$MkTbl_WklyInventoryForecast$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_WklyInventoryForecast] ADD CONSTRAINT [SSMA_CC$MkTbl_WklyInventoryForecast$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_WklyInventoryForecast] ADD CONSTRAINT [PK_MkTbl_WklyInventoryForecast] PRIMARY KEY CLUSTERED  ([InvFrcstCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[BOP UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'BOP UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[FISCAL_MONTH]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'FISCAL_MONTH'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[FISCAL_QUARTER]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'FISCAL_QUARTER'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[FISCAL_WEEK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'FISCAL_WEEK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[FISCAL_YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'FISCAL_YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[WEEK_BEGIN_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'WEEK_BEGIN_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_WklyInventoryForecast].[WEEK_END_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventoryForecast', 'COLUMN', N'WEEK_END_DATE'
GO
