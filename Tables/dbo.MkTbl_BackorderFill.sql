CREATE TABLE [dbo].[MkTbl_BackorderFill]
(
[BOFillCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[SKU] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BO UNITS] [float] NULL,
[BO COST $] [float] NULL,
[BO NET $] [float] NULL,
[BO TICKET $] [float] NULL,
[NDC] [datetime] NULL,
[FISCAL WK] [float] NULL,
[FISCAL YEAR] [float] NULL,
[OO UNITS] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_BackorderFill_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_BackorderFill] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_BackorderFill$CAT_DESCRIPTION$disallow_zero_length] CHECK ((len([CAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_BackorderFill] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_BackorderFill$COLOR DESCRIPTION$disallow_zero_length] CHECK ((len([COLOR DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_BackorderFill] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_BackorderFill$PO #$disallow_zero_length] CHECK ((len([PO #])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_BackorderFill] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_BackorderFill$SIZE DESCRIPTION$disallow_zero_length] CHECK ((len([SIZE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_BackorderFill] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_BackorderFill$SKU$disallow_zero_length] CHECK ((len([SKU])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_BackorderFill] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_BackorderFill$STYLE DESCRIPTION$disallow_zero_length] CHECK ((len([STYLE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_BackorderFill] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_BackorderFill$SUBCAT_DESCRIPTION$disallow_zero_length] CHECK ((len([SUBCAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_BackorderFill] ADD CONSTRAINT [SSMA_PK$MkTbl_BackorderFill] PRIMARY KEY NONCLUSTERED  ([BOFillCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[BO COST $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'BO COST $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[BO NET $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'BO NET $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[BO TICKET $]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'BO TICKET $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[BO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'BO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[FISCAL WK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'FISCAL WK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[FISCAL YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'FISCAL YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[NDC]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'NDC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[OO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'OO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[PO #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'PO #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[SKU]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'SKU'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_BackorderFill].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_BackorderFill', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
