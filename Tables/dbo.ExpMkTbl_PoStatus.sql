CREATE TABLE [dbo].[ExpMkTbl_PoStatus]
(
[CATALOG] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATALOG DESC] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST_EA] [float] NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OH UNITS] [float] NULL,
[APPROVED OO UNITS] [float] NULL,
[DRAFT OO UNITS] [float] NULL,
[HELD REQ UNITS] [float] NULL,
[PO STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NDC] [datetime] NULL,
[PO #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REQ #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APPROVED DATE] [datetime] NULL,
[SSMA_RowID] [int] NOT NULL IDENTITY(1, 1),
[CrOn] [datetime] NULL CONSTRAINT [DF_ExpMkTbl_PoStatus_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$CATALOG DESC$disallow_zero_length] CHECK ((len([CATALOG DESC])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$CATALOG$disallow_zero_length] CHECK ((len([CATALOG])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$CAT_DESCRIPTION$disallow_zero_length] CHECK ((len([CAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$COLOR DESCRIPTION$disallow_zero_length] CHECK ((len([COLOR DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$PO #$disallow_zero_length] CHECK ((len([PO #])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$PO STATUS$disallow_zero_length] CHECK ((len([PO STATUS])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$REQ #$disallow_zero_length] CHECK ((len([REQ #])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$STYLE DESCRIPTION$disallow_zero_length] CHECK ((len([STYLE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$SUBCAT_DESCRIPTION$disallow_zero_length] CHECK ((len([SUBCAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$Vendor #$disallow_zero_length] CHECK ((len([Vendor #])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$Vendor Name$disallow_zero_length] CHECK ((len([Vendor Name])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PoStatus$Vendor Style$disallow_zero_length] CHECK ((len([Vendor Style])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PoStatus] ADD CONSTRAINT [SSMA_PK$ExpMkTbl_PoStatus] PRIMARY KEY NONCLUSTERED  ([SSMA_RowID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[APPROVED DATE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'APPROVED DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[APPROVED OO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'APPROVED OO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[CATALOG]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'CATALOG'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[CATALOG DESC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'CATALOG DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[DRAFT OO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'DRAFT OO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[HELD REQ UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'HELD REQ UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[NDC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'NDC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[OH UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'OH UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[PO #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'PO #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[PO STATUS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'PO STATUS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[REQ #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'REQ #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[Vendor #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'Vendor #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[Vendor Name]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'Vendor Name'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PoStatus].[Vendor Style]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PoStatus', 'COLUMN', N'Vendor Style'
GO
