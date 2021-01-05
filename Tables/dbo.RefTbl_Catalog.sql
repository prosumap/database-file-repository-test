CREATE TABLE [dbo].[RefTbl_Catalog]
(
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISION_ID] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTION] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MACRO_CIRCULATION] [float] NULL,
[MACRO_ORDERS] [float] NULL,
[MACRO_UNITS] [float] NULL,
[MACRO_REVENUE] [float] NULL,
[GO LIVE FISCAL WEEK] [float] NULL,
[GO LIVE FISCAL YEAR] [float] NULL,
[ANTICIPATED_DROP_DATE] [datetime] NULL,
[ANTICIPATED_PERIOD_1_DATE] [datetime] NULL,
[PAGES] [float] NULL,
[PERCENT_COMPLETE] [float] NULL,
[OFFER_COST] [float] NULL,
[PRICE STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EVENT GROUP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EVENT YEAR] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ANTICIPATED_END_DATE] [datetime] NULL,
[ANTICIPATED END FISCAL WEEK] [float] NULL,
[ANTICIPATED END FISCAL YEAR] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_Catalog_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_Catalog] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$RefTbl_Catalog$DESCRIPTION$disallow_zero_length] CHECK ((len([DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[RefTbl_Catalog] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$RefTbl_Catalog$DIVISION_ID$disallow_zero_length] CHECK ((len([DIVISION_ID])>(0)))
GO
ALTER TABLE [dbo].[RefTbl_Catalog] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$RefTbl_Catalog$OFFER_ID$disallow_zero_length] CHECK ((len([OFFER_ID])>(0)))
GO
ALTER TABLE [dbo].[RefTbl_Catalog] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$RefTbl_Catalog$PRICE STATUS$disallow_zero_length] CHECK ((len([PRICE STATUS])>(0)))
GO
ALTER TABLE [dbo].[RefTbl_Catalog] ADD CONSTRAINT [SSMA_PK$RefTbl_Catalog] PRIMARY KEY NONCLUSTERED  ([OFFER_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[ANTICIPATED_DROP_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'ANTICIPATED_DROP_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[ANTICIPATED_PERIOD_1_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'ANTICIPATED_PERIOD_1_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[DIVISION_ID]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'DIVISION_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[MACRO_CIRCULATION]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'MACRO_CIRCULATION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[MACRO_ORDERS]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'MACRO_ORDERS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[MACRO_REVENUE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'MACRO_REVENUE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[MACRO_UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'MACRO_UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[OFFER_COST]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'OFFER_COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[PAGES]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'PAGES'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[PERCENT_COMPLETE]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'PERCENT_COMPLETE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Catalog].[PRICE STATUS]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Catalog', 'COLUMN', N'PRICE STATUS'
GO
