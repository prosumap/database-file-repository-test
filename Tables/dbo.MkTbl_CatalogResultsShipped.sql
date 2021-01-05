CREATE TABLE [dbo].[MkTbl_CatalogResultsShipped]
(
[CResSCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Catalog] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ship_Units] [float] NULL,
[Ship_Cost$] [float] NULL,
[Ship_Net$] [float] NULL,
[Ship_Gross$] [float] NULL,
[Ship_Fiscal_Year] [float] NULL,
[Ship_Fiscal_Month#] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_CatalogResultsShipped_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$Catalog$disallow_zero_length] CHECK ((len([Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$Class$disallow_zero_length] CHECK ((len([Class])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$Color$disallow_zero_length] CHECK ((len([Color])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$Department$disallow_zero_length] CHECK ((len([Department])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$Last Catalog$disallow_zero_length] CHECK ((len([Last Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$Status$disallow_zero_length] CHECK ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsShipped$Style$disallow_zero_length] CHECK ((len([Style])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsShipped] ADD CONSTRAINT [PK_MkTbl_CatalogResultsShipped] PRIMARY KEY CLUSTERED  ([CResSCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Last Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Last Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Ship_Cost$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Ship_Cost$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Ship_Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Ship_Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Ship_Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Ship_Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Ship_Gross$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Ship_Gross$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Ship_Net$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Ship_Net$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Ship_Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Ship_Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsShipped].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsShipped', 'COLUMN', N'Style'
GO
