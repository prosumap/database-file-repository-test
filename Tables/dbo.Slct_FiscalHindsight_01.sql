CREATE TABLE [dbo].[Slct_FiscalHindsight_01]
(
[FisHind01] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Slct_FiscalHindsight_01] ADD CONSTRAINT [PK_Slct_FiscalHindsight_01] PRIMARY KEY CLUSTERED  ([FisHind01]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[Vendor]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'Vendor'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[Slct_FiscalHindsight_01].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'Slct_FiscalHindsight_01', 'COLUMN', N'Vendor Style'
GO
