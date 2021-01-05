CREATE TABLE [dbo].[Slct_FiscalHindsight_03]
(
[FisHind03] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
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
[Fiscal Year] [float] NULL,
[Fiscal Month] [float] NULL,
[Fiscal Week] [float] NULL,
[Date] [datetime2] (0) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Slct_FiscalHindsight_03] ADD CONSTRAINT [PK_Slct_FiscalHindsight_03] PRIMARY KEY CLUSTERED  ([FisHind03]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Date]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Demand Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Demand Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Fiscal Month]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Fiscal Month'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Fiscal Week]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Fiscal Week'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Fiscal Year]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Fiscal Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_03].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_03', 'COLUMN', N'Vendor Style'
GO
