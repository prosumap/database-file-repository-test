CREATE TABLE [dbo].[MkTbl_OrdSrcCd]
(
[OrdCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[ORDER #] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORDER DATE] [datetime] NULL,
[SOURCE CD] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SOURCE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ALT SOURCE CD] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ALT SOURCE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DEMAND $] [float] NULL,
[SALES REP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUSTOMER #] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_OrdSrcCd_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_OrdSrcCd] ADD CONSTRAINT [MkTbl_OrdSrcCd$PrimaryKey] PRIMARY KEY CLUSTERED  ([OrdCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[ALT SOURCE CD]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'COLUMN', N'ALT SOURCE CD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[ALT SOURCE DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'COLUMN', N'ALT SOURCE DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[DEMAND $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'COLUMN', N'DEMAND $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[ORDER #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'COLUMN', N'ORDER #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[ORDER DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'COLUMN', N'ORDER DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[SALES REP]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'COLUMN', N'SALES REP'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[SOURCE CD]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'COLUMN', N'SOURCE CD'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[SOURCE DESC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'COLUMN', N'SOURCE DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[MkTbl_OrdSrcCd].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_OrdSrcCd', 'CONSTRAINT', N'MkTbl_OrdSrcCd$PrimaryKey'
GO
