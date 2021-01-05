CREATE TABLE [dbo].[MkTbl_ReturnsINV7]
(
[ReturnsINV7Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Return %] [float] NULL,
[Shipped Units] [float] NULL,
[Shipped Cost $] [float] NULL,
[Shipped $] [float] NULL,
[Advertised Shipped $] [float] NULL,
[Return Units] [float] NULL,
[Return Cost] [float] NULL,
[Return $] [float] NULL,
[Advertised Return $] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_ReturnsINV7_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_ReturnsINV7] ADD CONSTRAINT [PK_MkTbl_ReturnsINV7] PRIMARY KEY CLUSTERED  ([ReturnsINV7Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Advertised Return $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Advertised Return $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Advertised Shipped $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Advertised Shipped $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Return $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Return $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Return %]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Return %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Return Cost]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Return Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Return Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Return Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Shipped $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Shipped $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Shipped Cost $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Shipped Cost $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_ReturnsINV7].[Shipped Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ReturnsINV7', 'COLUMN', N'Shipped Units'
GO
