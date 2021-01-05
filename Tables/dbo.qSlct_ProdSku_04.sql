CREATE TABLE [dbo].[qSlct_ProdSku_04]
(
[ProdSku_04Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Event #] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Go Live] [datetime] NULL,
[Event End Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Return Rate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cost] [float] NULL,
[Original Price] [float] NULL,
[Current Price] [float] NULL,
[Current Event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event Go Live] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event End Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event Target ST%] [int] NULL,
[OH Units] [float] NULL,
[OO Units] [float] NULL,
[Requested OO Units] [float] NULL,
[Backorder Units] [float] NULL,
[Event OO Units] [float] NULL,
[EVENT BEGIN FISCAL WEEK] [float] NULL,
[EVENT BEGIN FISCAL YEAR] [float] NULL,
[Current Event Start Fiscal Week] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event Start Fiscal Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qSlct_ProdSku_04] ADD CONSTRAINT [PK_qSlct_ProdSku_04] PRIMARY KEY CLUSTERED  ([ProdSku_04Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Backorder Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Backorder Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Event]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Event End Date]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Event End Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Event Go Live]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Event Go Live'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Event Start Fiscal Week]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Event Start Fiscal Week'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Event Start Fiscal Year]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Event Start Fiscal Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Event Target ST%]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Event Target ST%'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Current Status]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Current Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Event]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[EVENT BEGIN FISCAL WEEK]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'EVENT BEGIN FISCAL WEEK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[EVENT BEGIN FISCAL YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'EVENT BEGIN FISCAL YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Event Description]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Event Description'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Event End Date]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Event End Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Event Go Live]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Event Go Live'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Event OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Event OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Event Year]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Event Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Requested OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Requested OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Return Rate]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Return Rate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_04].[Vendor Style #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_04', 'COLUMN', N'Vendor Style #'
GO
