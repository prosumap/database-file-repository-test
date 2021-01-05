CREATE TABLE [dbo].[MkTbl_CatalogResultsNet]
(
[CatResNCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Units] [float] NULL,
[Cost$] [float] NULL,
[Net$] [float] NULL,
[Gross$] [float] NULL,
[Fiscal_Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal_Month#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_CatalogResultsNet_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Catalog$disallow_zero_length] CHECK ((len([Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Class$disallow_zero_length] CHECK ((len([Class])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Color$disallow_zero_length] CHECK ((len([Color])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Department$disallow_zero_length] CHECK ((len([Department])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Fiscal_Month#$disallow_zero_length] CHECK ((len([Fiscal_Month#])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Fiscal_Year$disallow_zero_length] CHECK ((len([Fiscal_Year])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Last Catalog$disallow_zero_length] CHECK ((len([Last Catalog])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Status$disallow_zero_length] CHECK ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Style$disallow_zero_length] CHECK ((len([Style])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_CatalogResultsNet$Type$disallow_zero_length] CHECK ((len([Type])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_CatalogResultsNet] ADD CONSTRAINT [PK_MkTbl_CatalogResultsNet] PRIMARY KEY CLUSTERED  ([CatResNCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Cost$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Cost$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Gross$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Gross$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Last Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Last Catalog'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Net$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Net$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Type]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Type'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_CatalogResultsNet].[Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_CatalogResultsNet', 'COLUMN', N'Units'
GO
