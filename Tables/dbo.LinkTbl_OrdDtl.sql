CREATE TABLE [dbo].[LinkTbl_OrdDtl]
(
[OrdDtlCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OrdDtl] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SgOrdNo] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cat] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Source Cd] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Itemdt] [datetime] NULL,
[Ordrd] [float] NULL,
[Net Price] [float] NULL,
[GpriceDD] [float] NULL,
[InvCostDD] [float] NULL,
[TaxDD] [float] NULL,
[ShipHandDD] [float] NULL,
[Base#] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvId] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LongDescTx] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inet Ord ID] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [float] NULL,
[Dtl Seq] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Date] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_Ord_Dtl_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_OrdDtl] ADD CONSTRAINT [PK_LinkTbl_OrdDtl] PRIMARY KEY CLUSTERED  ([OrdDtlCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Base#]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'Base#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Cat]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'Cat'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Gpricedd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'GpriceDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Inet Ord ID]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'Inet Ord ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[INVCOSTDD]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'InvCostDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Invid]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'InvId'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Itemdt]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'Itemdt'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[LONGDESCTX]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'LongDescTx'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Net Price]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'Net Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[ORDDTL]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'OrdDtl'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Ordrd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'Ordrd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[POS]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'POS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[SGORDNO]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'SgOrdNo'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Shiphanddd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'ShipHandDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Source Cd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'Source Cd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Ord_Dtl].[Taxdd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_OrdDtl', 'COLUMN', N'TaxDD'
GO
