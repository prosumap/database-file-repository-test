CREATE TABLE [dbo].[MkTbl_ProjectionTool]
(
[ProjToolCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
[Backorder Units] [float] NULL,
[Event BOP U] [float] NULL,
[Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event #] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
ALTER TABLE [dbo].[MkTbl_ProjectionTool] ADD CONSTRAINT [PK_MkTbl_ProjectionTool] PRIMARY KEY CLUSTERED  ([ProjToolCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[1st Projection Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'1st Projection Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[1st Projection Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'1st Projection Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[1st Projection Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'1st Projection Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Actual Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Actual Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Actual Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Actual Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Actual Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Actual Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Actual Gross Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Actual Gross Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Actual Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Actual Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Backorder Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Backorder Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Beyond Basic]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Beyond Basic'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Beyond Basics Fall 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Beyond Basics Fall 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Beyond Basics Fall 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Beyond Basics Fall 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Beyond Basics Spring 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Beyond Basics Spring 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Beyond Basics Spring 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Beyond Basics Spring 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Beyond Basics Summer 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Beyond Basics Summer 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Beyond Basics Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Beyond Basics Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Current Discount %]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Current Discount %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Event BOP U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Event BOP U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Fall 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Fall 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Fall 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Fall 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Fall 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Fall 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Fall 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Fall 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Fall 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Fall 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Fall 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Fall 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Future Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Future Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Holiday 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Holiday 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Holiday 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Holiday 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Holiday 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Holiday 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Plan Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Plan Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Plan Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Plan Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Plan Gross Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Plan Gross Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Plan Net Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Plan Net Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Plan Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Plan Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Projection Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Projection Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Projection Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Projection Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Projection Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Projection Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Projection Ticket Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Projection Ticket Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring Trans 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring Trans 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring Trans 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring Trans 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Spring Trans 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Spring Trans 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 3 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 3 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 3 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 3 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Summer 3 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Summer 3 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Vacation 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Vacation 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Vendor Style #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Vendor Style #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Web Ex Fall 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Web Ex Fall 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Web Ex Fall 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Web Ex Fall 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Web Ex Spring 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Web Ex Spring 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Web Ex Spring 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Web Ex Spring 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Web Ex Summer 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Web Ex Summer 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Web Ex Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Web Ex Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Winter 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Winter 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ProjectionTool].[Winter 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ProjectionTool', 'COLUMN', N'Winter 21'
GO
