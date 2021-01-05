CREATE TABLE [dbo].[qSlct_ProdSku_02]
(
[ProdSku_02Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Event #] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Go Live] [datetime2] (0) NULL,
[Event End Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EVENT BEGIN FISCAL WEEK] [float] NULL,
[EVENT BEGIN FISCAL YEAR] [float] NULL,
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
[Original Price] [float] NULL,
[Current Price] [float] NULL,
[Cost] [float] NULL,
[Current Event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event Go Live] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event End Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OH Units] [float] NULL,
[OO Units] [float] NULL,
[Requested OO Units] [float] NULL,
[Current Event Target ST%] [int] NULL,
[Current Event Start Fiscal Week] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event Start Fiscal Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qSlct_ProdSku_02] ADD CONSTRAINT [PK_qSlct_ProdSku_02] PRIMARY KEY CLUSTERED  ([ProdSku_02Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Event]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Event End Date]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Event End Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Event Go Live]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Event Go Live'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Event Start Fiscal Week]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Event Start Fiscal Week'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Event Start Fiscal Year]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Event Start Fiscal Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Event Target ST%]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Event Target ST%'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Current Status]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Current Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Event]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Event #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[EVENT BEGIN FISCAL WEEK]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'EVENT BEGIN FISCAL WEEK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[EVENT BEGIN FISCAL YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'EVENT BEGIN FISCAL YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Event Description]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Event Description'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Event End Date]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Event End Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Event Go Live]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Event Go Live'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Event Year]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Event Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Requested OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Requested OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Return Rate]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Return Rate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[qSlct_ProdSku_02].[Vendor Style #]', 'SCHEMA', N'dbo', 'TABLE', N'qSlct_ProdSku_02', 'COLUMN', N'Vendor Style #'
GO
