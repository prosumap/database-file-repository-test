CREATE TABLE [dbo].[MkTbl_FiscalHindsightINV7]
(
[FiscalHindINV7Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Original Price] [int] NULL,
[Current Price] [int] NULL,
[Current Cost] [int] NULL,
[Current Event #] [int] NULL,
[Current Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Event #] [int] NULL,
[Last Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Current OH Units] [float] NULL,
[Current OH Cost $] [float] NULL,
[Current OH Price $] [float] NULL,
[Current OO Units] [float] NULL,
[Next 30 Days OO Units] [int] NULL CONSTRAINT [DF__MkTbl_Fis__Next __459509CE] DEFAULT ((0)),
[Current Backorder Units] [float] NULL,
[Return %] [float] NULL CONSTRAINT [DF__MkTbl_Fis__Retur__46892E07] DEFAULT ((0)),
[First Sales Date] [datetime] NULL,
[First Receipt Date] [datetime] NULL,
[Last Receipt Date] [datetime] NULL,
[Next Receipt Date] [datetime] NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Demand Units] [float] NULL,
[Demand Cost $] [float] NULL,
[Demand $] [float] NULL,
[Advertised Demand $] [float] NULL,
[Offered Demand $] [float] NULL,
[Demand Margin $] [float] NULL,
[Advertised Price] [float] NULL,
[AUR] [float] NULL,
[AUC] [float] NULL,
[BOP Units] [float] NULL,
[BOP Cost] [float] NULL,
[BOP Advertised Price] [float] NULL,
[Fiscal Year] [float] NULL,
[Fiscal Month] [float] NULL,
[Fiscal Week] [float] NULL,
[Date] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_FiscalHindsightINV7_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_FiscalHindsightINV7] ADD CONSTRAINT [PK_MkTbl_FiscalHindsightINV7] PRIMARY KEY CLUSTERED  ([FiscalHindINV7Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Advertised Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Advertised Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[AUC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'AUC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[AUR]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'AUR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[BOP Advertised Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'BOP Advertised Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[BOP Cost]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'BOP Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[BOP Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'BOP Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current Backorder Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current Backorder Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current Cost]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current OH Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current OH Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current OH Price $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current OH Price $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current OH Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current OH Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Current Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Current Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Demand Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Demand Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[First Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'First Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[First Sales Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'First Sales Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Fiscal Month]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Fiscal Month'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Fiscal Week]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Fiscal Week'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Fiscal Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Fiscal Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Last Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Last Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Last Event #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Last Event #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Last Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Last Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Next 30 Days OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Next 30 Days OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Next Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Next Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Offered Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Return %]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Return %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_FiscalHindsightINV7].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_FiscalHindsightINV7', 'COLUMN', N'Vendor Style'
GO
