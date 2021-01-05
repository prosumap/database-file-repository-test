CREATE TABLE [dbo].[MkTbl_ReceiptINV10]
(
[InvNoCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Receipt Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[First Receipt Date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Next Receipt Date] [datetime] NULL,
[Next Receipt OO Units] [float] NULL,
[Next Receipt PO #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_ReceiptINV10] ADD CONSTRAINT [PK_MkTbl_ReceiptINV10] PRIMARY KEY CLUSTERED  ([InvNoCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReceiptINV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReceiptINV10', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReceiptINV10].[First Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReceiptINV10', 'COLUMN', N'First Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReceiptINV10].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReceiptINV10', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReceiptINV10].[Last Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReceiptINV10', 'COLUMN', N'Last Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReceiptINV10].[Next Receipt Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReceiptINV10', 'COLUMN', N'Next Receipt Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReceiptINV10].[Next Receipt OO Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReceiptINV10', 'COLUMN', N'Next Receipt OO Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReceiptINV10].[Next Receipt PO #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReceiptINV10', 'COLUMN', N'Next Receipt PO #'
GO
