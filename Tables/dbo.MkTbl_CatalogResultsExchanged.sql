CREATE TABLE [dbo].[MkTbl_CatalogResultsExchanged]
(
[CatResECtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Catalog] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exch_Units] [float] NULL,
[Exch_Cost$] [float] NULL,
[Exch_Net$] [float] NULL,
[Exch_Gross$] [float] NULL,
[Exch_Fiscal_Month#] [float] NULL,
[Exch_Fiscal_Year] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_CatalogResultsExchanged_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$Catalog$disallow_zero_length] CHECK ((len([Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$Class$disallow_zero_length] CHECK ((len([Class])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$Color$disallow_zero_length] CHECK ((len([Color])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$Department$disallow_zero_length] CHECK ((len([Department])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$Last Catalog$disallow_zero_length] CHECK ((len([Last Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$Status$disallow_zero_length] CHECK ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsExchanged$Style$disallow_zero_length] CHECK ((len([Style])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsExchanged] ADD CONSTRAINT [PK_MkTbl_CatalogResultsExchanged] PRIMARY KEY CLUSTERED  ([CatResECtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Exch_Cost$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Exch_Cost$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Exch_Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Exch_Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Exch_Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Exch_Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Exch_Gross$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Exch_Gross$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Exch_Net$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Exch_Net$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Exch_Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Exch_Units'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Last Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Last Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsExchanged].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsExchanged', 'COLUMN', N'Style'
GO
