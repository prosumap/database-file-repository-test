CREATE TABLE [dbo].[LinkTbl_Hdr]
(
[OrdHdr] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Srccd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Alternate Source Code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Date] [datetime] NULL,
[Item Value] [float] NULL,
[EntBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cust] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_Hdr_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_Hdr] ADD CONSTRAINT [LinkTbl_Hdr$PrimaryKey] PRIMARY KEY CLUSTERED  ([OrdHdr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Hdr]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Hdr', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Hdr].[EntBy]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Hdr', 'COLUMN', N'EntBy'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Hdr].[Item Value]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Hdr', 'COLUMN', N'Item Value'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Hdr].[Order Date]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Hdr', 'COLUMN', N'Order Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Hdr].[ORDHDR]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Hdr', 'COLUMN', N'OrdHdr'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Hdr].[Srccd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Hdr', 'COLUMN', N'Srccd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Hdr].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Hdr', 'CONSTRAINT', N'LinkTbl_Hdr$PrimaryKey'
GO
