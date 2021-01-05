CREATE TABLE [dbo].[MkTbl_CatalogResultsReturned]
(
[CatRRCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Catalog] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rtn_Units] [float] NULL,
[Rtn_Cost$] [float] NULL,
[Rtn_Net$] [float] NULL,
[Rtn_Gross$] [float] NULL,
[Rtn_Fiscal_Month#] [float] NULL,
[Rtn_Fiscal_Year] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_CatalogResultsReturned_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$Catalog$disallow_zero_length] CHECK ((len([Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$Class$disallow_zero_length] CHECK ((len([Class])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$Color$disallow_zero_length] CHECK ((len([Color])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$Department$disallow_zero_length] CHECK ((len([Department])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$Last Catalog$disallow_zero_length] CHECK ((len([Last Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$Status$disallow_zero_length] CHECK ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsReturned$Style$disallow_zero_length] CHECK ((len([Style])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsReturned] ADD CONSTRAINT [PK_MkTbl_CatalogResultsReturned] PRIMARY KEY CLUSTERED  ([CatRRCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Last Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Last Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Rtn_Cost$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Rtn_Cost$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Rtn_Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Rtn_Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Rtn_Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Rtn_Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Rtn_Gross$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Rtn_Gross$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Rtn_Net$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Rtn_Net$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Rtn_Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Rtn_Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsReturned].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsReturned', 'COLUMN', N'Style'
GO
