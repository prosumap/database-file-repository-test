CREATE TABLE [dbo].[LinkTbl_CordDtl]
(
[COrdDtlCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OrdDtl] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SgOrdNo] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cat] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Source Cd] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemDt] [datetime] NULL,
[Ordrd] [float] NULL,
[Net Price] [float] NULL,
[GpriceDD] [float] NULL,
[InvCostDD] [float] NULL,
[TaxDD] [float] NULL,
[ShipHandDD] [float] NULL,
[Base#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LongDescTx] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inet Ord ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS] [float] NULL,
[Dtl Seq] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Date] [datetime] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_Cord_Dtl_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_CordDtl] ADD CONSTRAINT [PK_LinkTbl_CordDtl] PRIMARY KEY CLUSTERED  ([COrdDtlCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Base]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'Base#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Cat]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'Cat'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Gpricedd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'GpriceDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Inet Ord ID]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'Inet Ord ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[INVCOSTDD]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'InvCostDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Invid]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'InvId'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Itemdt]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'ItemDt'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[LONGDESCTX]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'LongDescTx'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Net Price]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'Net Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[CORDDTL]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'OrdDtl'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Ordrd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'Ordrd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[POS]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'POS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[SGORDNO]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'SgOrdNo'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Shiphanddd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'ShipHandDD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Source Cd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'Source Cd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cord_Dtl].[Taxdd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_CordDtl', 'COLUMN', N'TaxDD'
GO
