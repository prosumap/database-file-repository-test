CREATE TABLE [dbo].[RefTbl_Vdr_Main]
(
[VENDORFL] [float] NOT NULL,
[Nametx] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Autoccemailtx] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_Vdr_Main_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_Vdr_Main] ADD CONSTRAINT [RefTbl_Vdr_Main$PrimaryKey] PRIMARY KEY CLUSTERED  ([VENDORFL]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_Vdr_Main]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Vdr_Main', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_Vdr_Main].[Autoccemailtx]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Vdr_Main', 'COLUMN', N'Autoccemailtx'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_Vdr_Main].[Nametx]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Vdr_Main', 'COLUMN', N'Nametx'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_Vdr_Main].[VENDORFL]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Vdr_Main', 'COLUMN', N'VENDORFL'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[RefTbl_Vdr_Main].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Vdr_Main', 'CONSTRAINT', N'RefTbl_Vdr_Main$PrimaryKey'
GO
