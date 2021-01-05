CREATE TABLE [dbo].[LinkTbl_Cl_Hdr]
(
[ORDHDR] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Srccd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Alternate Source Code] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Date] [datetime] NULL,
[Item Value] [float] NULL,
[EntBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cust] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_Cl_Hdr_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_Cl_Hdr] ADD CONSTRAINT [PK_LinkTbl_Cl_Hdr] PRIMARY KEY CLUSTERED  ([ORDHDR]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cl_Hdr]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Cl_Hdr', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cl_Hdr].[Alternate Source Code]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Cl_Hdr', 'COLUMN', N'Alternate Source Code'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cl_Hdr].[EntBy]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Cl_Hdr', 'COLUMN', N'EntBy'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cl_Hdr].[Item Value]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Cl_Hdr', 'COLUMN', N'Item Value'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cl_Hdr].[Order Date]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Cl_Hdr', 'COLUMN', N'Order Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cl_Hdr].[CORDHDR]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Cl_Hdr', 'COLUMN', N'ORDHDR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Access Tbls 2.[LinkTbl_Cl_Hdr].[Srccd]', 'SCHEMA', N'dbo', 'TABLE', N'LinkTbl_Cl_Hdr', 'COLUMN', N'Srccd'
GO
