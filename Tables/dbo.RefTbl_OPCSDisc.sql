CREATE TABLE [dbo].[RefTbl_OPCSDisc]
(
[DiscCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[ACCTPAY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VNAME1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VendorNo] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvoiceNo] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvoiceAmt] [float] NULL,
[PO CASH] [float] NULL,
[GrossRecd] [float] NULL,
[CashRecd] [float] NULL,
[PayDate] [datetime] NULL,
[COMMENTS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSDisc_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSDisc] ADD CONSTRAINT [RefTbl_OPCSDisc$PrimaryKey] PRIMARY KEY CLUSTERED  ([DiscCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[ACCTPAY]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'ACCTPAY'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[CashRecd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'CashRecd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[COMMENTS]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'COMMENTS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[GrossRecd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'GrossRecd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[InvoiceAmt]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'InvoiceAmt'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[InvoiceNo]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'InvoiceNo'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[PayDate]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'PayDate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[PO]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'PO'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[PO CASH]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'PO CASH'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[VendorNo]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'VendorNo'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[VNAME1]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'COLUMN', N'VNAME1'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSDisc].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSDisc', 'CONSTRAINT', N'RefTbl_OPCSDisc$PrimaryKey'
GO
