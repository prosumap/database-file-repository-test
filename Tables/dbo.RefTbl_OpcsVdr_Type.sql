CREATE TABLE [dbo].[RefTbl_OpcsVdr_Type]
(
[VENDORADDRFL] [float] NOT NULL,
[Vendor] [float] NOT NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[E-mail Address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OpcsVdr_Type_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OpcsVdr_Type] ADD CONSTRAINT [RefTbl_OpcsVdr_Type$PrimaryKey] PRIMARY KEY CLUSTERED  ([Vendor], [VENDORADDRFL]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_OpcsVdr_Type]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OpcsVdr_Type', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_OpcsVdr_Type].[E-mail Address]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OpcsVdr_Type', 'COLUMN', N'E-mail Address'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_OpcsVdr_Type].[Type]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OpcsVdr_Type', 'COLUMN', N'Type'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_OpcsVdr_Type].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OpcsVdr_Type', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_OpcsVdr_Type].[Vendor Name]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OpcsVdr_Type', 'COLUMN', N'Vendor Name'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_OpcsVdr_Type].[VENDORADDRFL]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OpcsVdr_Type', 'COLUMN', N'VENDORADDRFL'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_OpcsVdr_Type].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OpcsVdr_Type', 'CONSTRAINT', N'RefTbl_OpcsVdr_Type$PrimaryKey'
GO
