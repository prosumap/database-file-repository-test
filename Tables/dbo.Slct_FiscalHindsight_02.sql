CREATE TABLE [dbo].[Slct_FiscalHindsight_02]
(
[FisHind02] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Demand Units] [float] NULL,
[Demand Cost $] [float] NULL,
[Demand $] [float] NULL,
[Advertised Demand $] [float] NULL,
[Fiscal_Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal_Month#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal_Wk#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Slct_FiscalHindsight_02] ADD CONSTRAINT [PK_Slct_FiscalHindsight_02] PRIMARY KEY CLUSTERED  ([FisHind02]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Date]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Fiscal_Wk#]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Fiscal_Wk#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_02].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_02', 'COLUMN', N'Vendor Style'
GO
