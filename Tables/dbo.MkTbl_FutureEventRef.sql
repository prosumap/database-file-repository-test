CREATE TABLE [dbo].[MkTbl_FutureEventRef]
(
[FutEventCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
ALTER TABLE [dbo].[MkTbl_FutureEventRef] ADD CONSTRAINT [PK_MkTbl_FutureEventRef] PRIMARY KEY CLUSTERED  ([FutEventCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Beyond Basics Fall 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Beyond Basics Fall 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Beyond Basics Fall 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Beyond Basics Fall 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Beyond Basics Spring 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Beyond Basics Spring 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Beyond Basics Spring 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Beyond Basics Spring 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Beyond Basics Summer 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Beyond Basics Summer 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Beyond Basics Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Beyond Basics Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall 1 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall 1 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall 2 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall 2 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Fall Trans 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Fall Trans 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Holiday 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Holiday 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Holiday 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Holiday 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Holiday 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Holiday 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Holiday 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Holiday 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring 1 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring 1 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring 2 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring 2 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring Trans 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring Trans 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring Trans 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring Trans 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring Trans 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring Trans 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Spring Trans 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Spring Trans 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 1 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 1 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 1 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 1 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 1 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 1 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 1 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 1 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 2 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 2 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 2 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 2 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 2 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 2 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 2 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 2 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 3 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 3 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 3 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 3 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 3 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 3 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Summer 3 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Summer 3 21'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Vacation 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Vacation 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Web Ex Fall 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Web Ex Fall 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Web Ex Fall 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Web Ex Fall 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Web Ex Spring 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Web Ex Spring 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Web Ex Spring 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Web Ex Spring 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Web Ex Summer 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Web Ex Summer 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Web Ex Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Web Ex Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Winter 18]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Winter 18'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Winter 19]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Winter 19'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Winter 20]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Winter 20'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FutureEventRef].[Winter 21]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FutureEventRef', 'COLUMN', N'Winter 21'
GO
