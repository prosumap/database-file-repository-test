CREATE TABLE [dbo].[MkTbl_TrendINV7]
(
[TrendINV7Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
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
[Current OH Units] [float] NULL,
[Next 30 Days OO Units] [float] NULL,
[Current OO Units] [float] NULL,
[Current Backorder Units] [float] NULL,
[Current Backorder Cost $] [float] NULL,
[Current Backorder $] [float] NULL,
[Return %] [float] NULL,
[Current Event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current Event] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Event] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[First Sales Date] [datetime2] (0) NULL,
[First Receipt Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Next Receipt Date] [datetime2] (0) NULL,
[Last Receipt Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Yesterday Demand Units] [int] NULL,
[Yesterday Demand Cost $] [int] NULL,
[Yesterday Demand $] [int] NULL,
[Yesterday Advertised Demand $] [int] NULL,
[Yesterday Offered Demand $] [int] NULL,
[Yesterday Margin $] [int] NULL,
[Last 7 Days Demand Units] [int] NULL,
[Last 7 Days Demand Cost $] [int] NULL,
[Last 7 Days Demand $] [int] NULL,
[Last 7 Days Advertised Demand $] [int] NULL,
[Last 7 Days Offered Demand $] [int] NULL,
[Last 7 Days Margin $] [int] NULL,
[Last 14 Days Demand Units] [int] NULL,
[Last 14 Days Demand Cost $] [int] NULL,
[Last 14 Days Demand $] [int] NULL,
[Last 14 Days Advertised Demand $] [int] NULL,
[Last 14 Days Offered Demand $] [int] NULL,
[Last 14 Days Margin $] [int] NULL,
[Last 30 Days Demand Units] [int] NULL,
[Last 30 Days Demand Cost $] [int] NULL,
[Last 30 Days Demand $] [int] NULL,
[Last 30 Days Advertised Demand $] [int] NULL,
[Last 30 Days Offered Demand $] [int] NULL,
[Last 30 Days Margin $] [int] NULL,
[Last 60 Days Demand Units] [int] NULL,
[Last 60 Days Demand Cost $] [int] NULL,
[Last 60 Days Demand $] [int] NULL,
[Last 60 Days Advertised Demand $] [int] NULL,
[Last 60 Days Offered Demand $] [int] NULL,
[Last 60 Days Margin $] [int] NULL,
[Last 90 Days Demand Units] [int] NULL,
[Last 90 Days Demand Cost $] [int] NULL,
[Last 90 Days Demand $] [int] NULL,
[Last 90 Days Advertised Demand $] [int] NULL,
[Last 90 Days Offered Demand $] [int] NULL,
[Last 90 Days Margin $] [int] NULL,
[Last 365 Days Demand Units] [int] NULL,
[Last 365 Days Demand Cost $] [int] NULL,
[Last 365 Days Demand $] [int] NULL,
[Last 365 Days Advertised Demand $] [int] NULL,
[Last 365 Days Offered Demand $] [int] NULL,
[Last 365 Days Margin $] [int] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_TrendINV7_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_TrendINV7] ADD CONSTRAINT [PK_MkTbl_TrendINV7] PRIMARY KEY CLUSTERED  ([TrendINV7Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current Backorder $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current Backorder $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current Backorder Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current Backorder Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current Backorder Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current Backorder Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current Cost]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[First Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'First Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[First Sales Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'First Sales Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 14 Days Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 14 Days Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 14 Days Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 14 Days Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 14 Days Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 14 Days Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 14 Days Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 14 Days Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 14 Days Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 14 Days Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 14 Days Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 14 Days Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 30 Days Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 30 Days Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 30 Days Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 30 Days Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 30 Days Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 30 Days Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 30 Days Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 30 Days Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 30 Days Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 30 Days Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 30 Days Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 30 Days Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 365 Days Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 365 Days Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 365 Days Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 365 Days Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 365 Days Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 365 Days Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 365 Days Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 365 Days Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 365 Days Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 365 Days Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 365 Days Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 365 Days Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 60 Days Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 60 Days Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 60 Days Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 60 Days Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 60 Days Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 60 Days Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 60 Days Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 60 Days Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 60 Days Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 60 Days Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 60 Days Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 60 Days Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 7 Days Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 7 Days Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 7 Days Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 7 Days Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 7 Days Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 7 Days Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 7 Days Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 7 Days Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 7 Days Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 7 Days Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 7 Days Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 7 Days Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 90 Days Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 90 Days Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 90 Days Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 90 Days Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 90 Days Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 90 Days Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 90 Days Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 90 Days Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 90 Days Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 90 Days Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last 90 Days Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last 90 Days Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Last Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Last Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Next 30 Days OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Next 30 Days OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Next Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Next Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Return %]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Return %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Yesterday Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Yesterday Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Yesterday Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Yesterday Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Yesterday Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Yesterday Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Yesterday Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Yesterday Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Yesterday Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Yesterday Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_TrendINV7].[Yesterday Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_TrendINV7', 'COLUMN', N'Yesterday Offered Demand $'
GO
