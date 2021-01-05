CREATE TABLE [dbo].[RefTbl_OPCSVendor]
(
[VENDORFL] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BP id] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Nametx] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Terms] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TERMSDESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Port Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSVendor_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSVendor] ADD CONSTRAINT [PK_RefTbl_OPCSVendor_1] PRIMARY KEY CLUSTERED  ([VENDORFL], [Terms]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSVendor]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSVendor', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSVendor].[BP id]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSVendor', 'COLUMN', N'BP id'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSVendor].[Nametx]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSVendor', 'COLUMN', N'Nametx'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSVendor].[Port Name]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSVendor', 'COLUMN', N'Port Name'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSVendor].[Terms]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSVendor', 'COLUMN', N'Terms'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSVendor].[TERMSDESC]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSVendor', 'COLUMN', N'TERMSDESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSVendor].[VENDORFL]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSVendor', 'COLUMN', N'VENDORFL'
GO
