CREATE TABLE [dbo].[MkTbl_CurrentINV7]
(
[CurrINV7Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Original Price] [float] NULL,
[Current Price] [float] NULL,
[Current Cost] [float] NULL,
[Current Event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Event] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current OH Units] [float] NULL,
[Current OO Units] [float] NULL,
[Next 30 Days OO Units] [float] NULL,
[Current Backorder Units] [float] NULL,
[Current Backorder Cost $] [float] NULL,
[Current Backorder $] [float] NULL,
[Return %] [float] NULL,
[First Sales Date] [datetime] NULL,
[First Receipt Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Receipt Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Next Receipt Date] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_CurrentINV7_CrOn] DEFAULT (getdate()),
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_CurrentINV7] ADD CONSTRAINT [PK_MkTbl_CurrentINV7] PRIMARY KEY CLUSTERED  ([CurrINV7Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current Backorder $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current Backorder $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current Backorder Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current Backorder Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current Backorder Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current Backorder Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current Cost]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[First Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'First Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[First Sales Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'First Sales Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Last Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Last Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Last Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Last Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Last Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Last Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Next 30 Days OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Next 30 Days OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Next Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Next Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Return %]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Return %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CurrentINV7].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CurrentINV7', 'COLUMN', N'Style'
GO
