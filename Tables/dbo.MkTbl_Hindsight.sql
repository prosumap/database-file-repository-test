CREATE TABLE [dbo].[MkTbl_Hindsight]
(
[HandsightCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
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
[Beyond Basic] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Future Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Original Price] [float] NULL,
[Current Price] [float] NULL,
[Current Discount %] [float] NULL,
[Cost] [float] NULL,
[OH Units] [float] NULL,
[OO Units] [float] NULL,
[Event OO Units] [float] NULL,
[Requested OO Units] [float] NULL,
[Backorder Units] [float] NULL,
[Event BOP U] [float] NULL,
[Event Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event #] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event Go Live] [datetime] NULL,
[Current Event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Actual Demand Units] [float] NULL,
[Actual Demand Cost $] [float] NULL,
[Actual Demand $] [float] NULL,
[Actual Gross Demand $] [float] NULL,
[Actual Offered Demand $] [float] NULL,
[Projection Offered Demand $] [float] NULL,
[Projection Ticket Demand $] [float] NULL,
[Projection Demand Cost $] [float] NULL,
[Projection Demand Units] [float] NULL,
[1st Projection Offered Demand $] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[1st Projection Demand Cost $] [float] NULL,
[1st Projection Demand Units] [float] NULL,
[Plan Offered Demand $] [float] NULL,
[Plan Gross Demand $] [float] NULL,
[Plan Net Demand $] [float] NULL,
[Plan Demand Cost $] [float] NULL,
[Plan Demand Units] [float] NULL,
[Forecast Offered Demand $] [float] NULL,
[Forecast Gross Demand $] [float] NULL,
[Forecast Net Demand $] [float] NULL,
[Forecast Demand Cost $] [float] NULL,
[Forecast Demand Units] [float] NULL,
[Spring Trans 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring 1 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring 2 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 1 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 2 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 3 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall Trans 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall 1 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall 2 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Winter 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Holiday 18] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring Trans 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring 1 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring 2 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 1 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 2 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 3 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vacation 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall 1 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall 2 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Winter 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Holiday 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring Trans 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring 1 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring 2 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 1 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 2 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 3 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall 1 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall 2 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Winter 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Holiday 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring Trans 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring 1 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spring 2 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 1 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 2 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Summer 3 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall 1 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fall 2 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Winter 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Holiday 21] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Beyond Basics Spring 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Beyond Basics Fall 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Beyond Basics Spring 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Beyond Basics Summer 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Beyond Basics Fall 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Beyond Basics Winter 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Web Ex Spring 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Web Ex Fall 19] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Web Ex Spring 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Web Ex Summer 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Web Ex Fall 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Web Ex Winter 20] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Hindsight] ADD CONSTRAINT [PK_MkTbl_Hindsight] PRIMARY KEY CLUSTERED  ([HandsightCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[1st Projection Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'1st Projection Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[1st Projection Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'1st Projection Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[1st Projection Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'1st Projection Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Actual Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Actual Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Actual Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Actual Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Actual Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Actual Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Actual Gross Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Actual Gross Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Actual Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Actual Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Backorder Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Backorder Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Beyond Basic]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Beyond Basic'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Beyond Basics Fall 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Beyond Basics Fall 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Beyond Basics Fall 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Beyond Basics Fall 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Beyond Basics Spring 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Beyond Basics Spring 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Beyond Basics Spring 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Beyond Basics Spring 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Beyond Basics Summer 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Beyond Basics Summer 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Beyond Basics Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Beyond Basics Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Current Discount %]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Current Discount %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Event BOP U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Event BOP U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Event Description]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Event Description'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Event Go Live]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Event Go Live'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Event OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Event OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall 1 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall 1 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall 2 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall 2 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Fall Trans 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Fall Trans 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Forecast Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Forecast Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Forecast Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Forecast Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Forecast Gross Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Forecast Gross Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Forecast Net Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Forecast Net Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Forecast Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Forecast Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Future Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Future Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Holiday 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Holiday 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Holiday 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Holiday 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Holiday 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Holiday 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Holiday 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Holiday 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Plan Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Plan Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Plan Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Plan Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Plan Gross Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Plan Gross Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Plan Net Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Plan Net Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Plan Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Plan Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Projection Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Projection Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Projection Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Projection Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Projection Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Projection Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Projection Ticket Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Projection Ticket Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Requested OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Requested OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Return Rate]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Return Rate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring 1 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring 1 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring 2 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring 2 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring Trans 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring Trans 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring Trans 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring Trans 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring Trans 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring Trans 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Spring Trans 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Spring Trans 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 1 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 1 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 2 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 2 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 3 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 3 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 3 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 3 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 3 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 3 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Summer 3 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Summer 3 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Vacation 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Vacation 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Vendor Style #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Vendor Style #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Web Ex Fall 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Web Ex Fall 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Web Ex Fall 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Web Ex Fall 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Web Ex Spring 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Web Ex Spring 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Web Ex Spring 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Web Ex Spring 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Web Ex Summer 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Web Ex Summer 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Web Ex Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Web Ex Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Winter 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Winter 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Winter 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Winter 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Hindsight].[Winter 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Hindsight', 'COLUMN', N'Winter 21'
GO
