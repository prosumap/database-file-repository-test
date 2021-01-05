CREATE TABLE [dbo].[qSlct_ProdSku_08]
(
[ProdSku_08Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
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
[Beyond Basic] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Future Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OH Units] [float] NULL,
[OH Cost] [float] NULL,
[OO Units] [float] NULL,
[Requested OO Units] [float] NULL,
[Event OO Units] [float] NULL,
[Backorder Units] [float] NULL,
[EVENT BEGIN FISCAL WEEK] [float] NULL,
[EVENT BEGIN FISCAL YEAR] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qSlct_ProdSku_08] ADD CONSTRAINT [PK_qSlct_ProdSku_08] PRIMARY KEY CLUSTERED  ([ProdSku_08Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Backorder Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Backorder Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Beyond Basic]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Beyond Basic'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Current Discount %]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Current Discount %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[EVENT BEGIN FISCAL WEEK]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'EVENT BEGIN FISCAL WEEK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[EVENT BEGIN FISCAL YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'EVENT BEGIN FISCAL YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Event Description]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Event Description'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Event End Date]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Event End Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Event Go Live]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Event Go Live'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Event OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Event OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Future Event]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Future Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[OH Cost]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'OH Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Requested OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Requested OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Return Rate]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Return Rate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_08].[Vendor Style #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_08', 'COLUMN', N'Vendor Style #'
GO
