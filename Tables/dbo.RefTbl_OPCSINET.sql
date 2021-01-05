CREATE TABLE [dbo].[RefTbl_OPCSINET]
(
[INETSKUSO] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Cat#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Statuscd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inetpricedd] [float] NULL,
[Catpricedd] [float] NULL,
[Cost] [float] NULL,
[Ohqq] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_OPCSINET_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_OPCSINET] ADD CONSTRAINT [RefTbl_OPCSINET$PrimaryKey] PRIMARY KEY CLUSTERED  ([INETSKUSO]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET].[Cat#]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', 'COLUMN', N'Cat#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET].[Catpricedd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', 'COLUMN', N'Catpricedd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET].[Inetpricedd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', 'COLUMN', N'Inetpricedd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET].[INETSKUSO]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', 'COLUMN', N'INETSKUSO'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET].[Ohqq]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', 'COLUMN', N'Ohqq'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET].[Statuscd]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', 'COLUMN', N'Statuscd'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_OPCSINET].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_OPCSINET', 'CONSTRAINT', N'RefTbl_OPCSINET$PrimaryKey'
GO
