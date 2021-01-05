CREATE TABLE [dbo].[MkTbl_LastEvent]
(
[LastEventCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Event] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_LastEvent_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_LastEvent] ADD CONSTRAINT [PK_MkTbl_LastEvent] PRIMARY KEY CLUSTERED  ([LastEventCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[Last Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'Last Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_LastEvent].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_LastEvent', 'COLUMN', N'Style'
GO
