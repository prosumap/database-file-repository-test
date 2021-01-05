CREATE TABLE [dbo].[MkTbl_Last365DaysINV10]
(
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Demand Units] [float] NULL,
[Demand Cost $] [float] NULL,
[Demand $] [float] NULL,
[Advertised Demand $] [float] NULL,
[Offered Demand $] [float] NULL,
[Demand Margin $] [float] NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10].[Advertised Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', 'COLUMN', N'Advertised Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10].[Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', 'COLUMN', N'Demand $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10].[Demand Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', 'COLUMN', N'Demand Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10].[Demand Margin $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', 'COLUMN', N'Demand Margin $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10].[Demand Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', 'COLUMN', N'Demand Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Last365DaysINV10].[Offered Demand $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Last365DaysINV10', 'COLUMN', N'Offered Demand $'
GO
