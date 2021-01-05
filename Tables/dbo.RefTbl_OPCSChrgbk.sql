CREATE TABLE [dbo].[RefTbl_OPCSChrgbk]
(
[ACCTPAY ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNAME1 ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VENDOR NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RECEIPT NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RECEIPT DATE] [datetime2] (0) NULL,
[RECEIPT AMOUNT] [float] NULL,
[COMMENTS ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESC ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSChrgbk_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSChrgbk] ADD CONSTRAINT [RefTbl_OPCSChrgbk$PrimaryKey] PRIMARY KEY CLUSTERED  ([ACCTPAY ]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[ACCTPAY ]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'COLUMN', N'ACCTPAY '
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[COMMENTS ]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'COLUMN', N'COMMENTS '
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[DESC ]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'COLUMN', N'DESC '
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[RECEIPT AMOUNT]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'COLUMN', N'RECEIPT AMOUNT'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[RECEIPT DATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'COLUMN', N'RECEIPT DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[RECEIPT NUMBER]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'COLUMN', N'RECEIPT NUMBER'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[VENDOR NUMBER]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'COLUMN', N'VENDOR NUMBER'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[VNAME1 ]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'COLUMN', N'VNAME1 '
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSChrgbk].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSChrgbk', 'CONSTRAINT', N'RefTbl_OPCSChrgbk$PrimaryKey'
GO
