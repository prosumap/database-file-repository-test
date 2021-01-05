CREATE TABLE [dbo].[MkTbl_InventoryForecast_Adhoc]
(
[InvFCAdHCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Original Price] [float] NULL,
[Cost] [float] NULL,
[BOP UNITS] [float] NULL,
[DATE] [datetime] NULL,
[FISCAL_WEEK] [float] NULL,
[FISCAL_YEAR] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_InventoryForecast_Adhoc] ADD CONSTRAINT [PK_MkTbl_InventoryForecast_Adhoc] PRIMARY KEY CLUSTERED  ([InvFCAdHCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[BOP UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'BOP UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Cost]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Cost'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[FISCAL_WEEK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'FISCAL_WEEK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[FISCAL_YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'FISCAL_YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Original Price]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Original Price'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_InventoryForecast_Adhoc].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_InventoryForecast_Adhoc', 'COLUMN', N'Style'
GO
