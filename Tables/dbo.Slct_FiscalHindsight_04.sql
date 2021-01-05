CREATE TABLE [dbo].[Slct_FiscalHindsight_04]
(
[FisHind04] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
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
[Demand Margin $] [float] NULL,
[Advertised Price] [float] NULL,
[AUR] [float] NULL,
[AUC] [float] NULL,
[BOP Units] [float] NULL,
[BOP Cost] [float] NULL,
[Fiscal Year] [float] NULL,
[Fiscal Month] [float] NULL,
[Fiscal Week] [float] NULL,
[Date] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Slct_FiscalHindsight_04] ADD CONSTRAINT [PK_Slct_FiscalHindsight_04] PRIMARY KEY CLUSTERED  ([FisHind04]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Advertised Price]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Advertised Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[AUC]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'AUC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[AUR]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'AUR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[BOP Cost]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'BOP Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[BOP Units]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'BOP Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Date]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Demand Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Demand Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Fiscal Month]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Fiscal Month'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Fiscal Week]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Fiscal Week'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Fiscal Year]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Fiscal Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_04].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_04', 'COLUMN', N'Vendor Style'
GO
