CREATE TABLE [dbo].[RefTbl_OPCSPOClsd]
(
[POCLCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[POCLOSEDBP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item No] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[F21reqid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Approveddt] [datetime] NULL,
[Date Due] [datetime] NULL,
[Ordqq] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_Ordqq] DEFAULT ((0)),
[QtyRecd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_QtyRecd] DEFAULT ((0)),
[CX] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_CX] DEFAULT ((0)),
[Unitcostdd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_Unitcostdd] DEFAULT ((0)),
[Terms] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Discountdd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_Discountdd] DEFAULT ((0)),
[Discountpc] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_Discountpc] DEFAULT ((0)),
[DateRecd] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSPOClsd_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSPOClsd] ADD CONSTRAINT [RefTbl_OPCSPOClsd$PrimaryKey] PRIMARY KEY CLUSTERED  ([POCLCtr]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RefTbl_OPCSPOClsd$F21reqid] ON [dbo].[RefTbl_OPCSPOClsd] ([F21reqid]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[Approveddt]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'Approveddt'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[CX]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'CX'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[Date Due]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'Date Due'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[DateRecd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'DateRecd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[Discountdd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'Discountdd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[Discountpc]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'Discountpc'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[F21reqid]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'F21reqid'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[Item No]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'Item No'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[Ordqq]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'Ordqq'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[POCLOSEDBP]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'POCLOSEDBP'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[QtyRecd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'QtyRecd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[Terms]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'Terms'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[Unitcostdd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'COLUMN', N'Unitcostdd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'CONSTRAINT', N'RefTbl_OPCSPOClsd$PrimaryKey'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPOClsd].[F21reqid]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPOClsd', 'INDEX', N'RefTbl_OPCSPOClsd$F21reqid'
GO
