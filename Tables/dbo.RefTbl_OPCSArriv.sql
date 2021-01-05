CREATE TABLE [dbo].[RefTbl_OPCSArriv]
(
[PO_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ARRIVAL_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXP_IN_HOUSE_DATE] [datetime] NULL,
[EXP_SHIP_DATE] [datetime] NULL,
[LAST_MOD_DATE] [datetime] NULL,
[LAST_MOD_TIME] [datetime] NULL,
[ALLOCATION_APPROVED] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TRANSPORTATION_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSArriv_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSArriv] ADD CONSTRAINT [RefTbl_OPCSArriv$PrimaryKey] PRIMARY KEY CLUSTERED  ([PO_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RefTbl_OPCSArriv$PO_ID] ON [dbo].[RefTbl_OPCSArriv] ([PO_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[ALLOCATION_APPROVED]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'COLUMN', N'ALLOCATION_APPROVED'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[ARRIVAL_NO]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'COLUMN', N'ARRIVAL_NO'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[EXP_IN_HOUSE_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'COLUMN', N'EXP_IN_HOUSE_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[EXP_SHIP_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'COLUMN', N'EXP_SHIP_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[LAST_MOD_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'COLUMN', N'LAST_MOD_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[LAST_MOD_TIME]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'COLUMN', N'LAST_MOD_TIME'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[PO_ID]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'COLUMN', N'PO_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[TRANSPORTATION_MODE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'COLUMN', N'TRANSPORTATION_MODE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'CONSTRAINT', N'RefTbl_OPCSArriv$PrimaryKey'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArriv].[PO_ID]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArriv', 'INDEX', N'RefTbl_OPCSArriv$PO_ID'
GO
