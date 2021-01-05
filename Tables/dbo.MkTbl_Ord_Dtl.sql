CREATE TABLE [dbo].[MkTbl_Ord_Dtl]
(
[OrdDtlCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[ORDER #] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORDDTL] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SGORDNO] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Customer #] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cat] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Source Cd] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SOURCE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ALT SOURCE CD] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ALT SOURCE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrdDt] [datetime] NULL,
[ItemDt] [datetime] NULL,
[Ordrd] [float] NULL,
[Net Price] [float] NULL,
[GPriceDD] [float] NULL,
[InvCostDD] [float] NULL,
[TaxDD] [float] NULL,
[ShipHandDD] [float] NULL,
[Base#] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvID] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LongDescTX] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inet Ord ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SALES REP] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [float] NULL,
[Dtl Seq] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_Tbl_Ord_Dtl_CrOn] DEFAULT (getdate()),
[StaticRec] [bit] NOT NULL CONSTRAINT [DF_MkTbl_Ord_Dtl_StaticRec] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Ord_Dtl] ADD CONSTRAINT [PK_Tbl_Ord_Dtl] PRIMARY KEY CLUSTERED  ([OrdDtlCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[Base#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'Base#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[Cat]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'Cat'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[GPriceDD]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'GPriceDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[Inet Ord ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'Inet Ord ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[InvCostDD]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'InvCostDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[InvID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'InvID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[ItemDt]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'ItemDt'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[LongDescTX]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'LongDescTX'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[Net Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'Net Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[ORDDTL]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'ORDDTL'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[Ordrd]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'Ordrd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[POS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'POS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[SGORDNO]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'SGORDNO'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[ShipHandDD]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'ShipHandDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[Source Cd]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'Source Cd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[Tbl_Ord_Dtl].[TaxDD]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Ord_Dtl', 'COLUMN', N'TaxDD'
GO
