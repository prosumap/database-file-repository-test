CREATE TABLE [dbo].[RefTbl_OPCSPO]
(
[POCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[POBP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item No] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[F21reqid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Approveddt] [datetime] NULL,
[EXPDATE] [datetime] NULL,
[Ordqq] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_Ordqq] DEFAULT ((0)),
[QtyRecd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_QtyRecd] DEFAULT ((0)),
[CX] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_CX] DEFAULT ((0)),
[Unitcostdd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_Unitcostdd] DEFAULT ((0)),
[Terms] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Discountdd] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_Discountdd] DEFAULT ((0)),
[Discountpc] [float] NULL CONSTRAINT [DF_RefTbl_OPCSPO_Discountpc] DEFAULT ((0)),
[RecdDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSPO_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSPO] ADD CONSTRAINT [RefTbl_OPCSPO$PrimaryKey] PRIMARY KEY CLUSTERED  ([POCtr]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RefTbl_OPCSPO$F21reqid] ON [dbo].[RefTbl_OPCSPO] ([F21reqid]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[Approveddt]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'Approveddt'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[CX]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'CX'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[Discountdd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'Discountdd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[Discountpc]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'Discountpc'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[EXPDATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'EXPDATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[F21reqid]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'F21reqid'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[Item No]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'Item No'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[Ordqq]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'Ordqq'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[POBP]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'POBP'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[QtyRecd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'QtyRecd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[RecdDate]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'RecdDate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[Terms]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'Terms'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[Unitcostdd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'COLUMN', N'Unitcostdd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'CONSTRAINT', N'RefTbl_OPCSPO$PrimaryKey'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSPO].[F21reqid]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSPO', 'INDEX', N'RefTbl_OPCSPO$F21reqid'
GO
