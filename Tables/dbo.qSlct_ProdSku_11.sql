CREATE TABLE [dbo].[qSlct_ProdSku_11]
(
[ProdSku_11Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Return Rate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Original Price] [float] NULL,
[Current Price] [float] NULL,
[Current Discount %] [float] NULL,
[Cost] [float] NULL,
[Current Event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event #] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Go Live] [datetime] NULL,
[Event End Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Begin Fiscal Week] [float] NULL,
[Event Begin Fiscal Year] [float] NULL,
[Beyond Basic] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Future Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OH Units] [float] NULL,
[OH Cost] [float] NULL,
[OO Units] [float] NULL,
[Event OO Units] [float] NULL,
[Requested OO Units] [float] NULL,
[Backorder Units] [float] NULL,
[Event BOP U] [float] NULL,
[Event BOP Cost $] [float] NULL,
[Actual Demand Units] [float] NULL,
[Actual Demand Cost $] [float] NULL,
[Actual Demand $] [float] NULL,
[Actual Gross Demand $] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qSlct_ProdSku_11] ADD CONSTRAINT [PK_qSlct_ProdSku_11] PRIMARY KEY CLUSTERED  ([ProdSku_11Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Actual Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Actual Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Actual Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Actual Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Actual Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Actual Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Actual Gross Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Actual Gross Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Backorder Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Backorder Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Beyond Basic]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Beyond Basic'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Current Discount %]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Current Discount %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event Begin Fiscal Week]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event Begin Fiscal Week'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event Begin Fiscal Year]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event Begin Fiscal Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event BOP Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event BOP Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event BOP U]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event BOP U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event Description]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event Description'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event End Date]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event End Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event Go Live]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event Go Live'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Event OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Event OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Future Event]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Future Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[OH Cost]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'OH Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Requested OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Requested OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Return Rate]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Return Rate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_11].[Vendor Style #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_11', 'COLUMN', N'Vendor Style #'
GO
