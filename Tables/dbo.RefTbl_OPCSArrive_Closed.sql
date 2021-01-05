CREATE TABLE [dbo].[RefTbl_OPCSArrive_Closed]
(
[PO_ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ARRIVAL_NO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXP_IN_HOUSE_DATE] [datetime] NULL,
[EXP_SHIP_DATE] [datetime] NULL,
[LAST_MOD_DATE] [datetime] NULL,
[LAST_MOD_TIME] [datetime] NULL,
[ALLOCATION_APPROVED] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TRANSPORTATION_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSArrive_Closed_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSArrive_Closed] ADD CONSTRAINT [RefTbl_OPCSArrive_Closed$PrimaryKey] PRIMARY KEY CLUSTERED  ([PO_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RefTbl_OPCSArrive_Closed$PO_ID] ON [dbo].[RefTbl_OPCSArrive_Closed] ([PO_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed].[ARRIVAL_NO]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', 'COLUMN', N'ARRIVAL_NO'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed].[EXP_IN_HOUSE_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', 'COLUMN', N'EXP_IN_HOUSE_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed].[EXP_SHIP_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', 'COLUMN', N'EXP_SHIP_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed].[LAST_MOD_DATE LAST_MOD_TIME ALLOCATION_APPROVED]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', 'COLUMN', N'LAST_MOD_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed].[PO_ID]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', 'COLUMN', N'PO_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed].[TRANSPORTATION_MODE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', 'COLUMN', N'TRANSPORTATION_MODE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', 'CONSTRAINT', N'RefTbl_OPCSArrive_Closed$PrimaryKey'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSArrive_Closed].[PO_ID]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSArrive_Closed', 'INDEX', N'RefTbl_OPCSArrive_Closed$PO_ID'
GO
