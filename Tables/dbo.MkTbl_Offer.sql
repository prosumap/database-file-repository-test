CREATE TABLE [dbo].[MkTbl_Offer]
(
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MACRO_CIRCULATION] [float] NOT NULL,
[DIVISION_ID] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OFFER_YEAR] [float] NULL,
[MACRO_ORDERS] [float] NULL,
[MACRO_UNITS] [float] NULL,
[MACRO_REVENUE] [float] NULL,
[ANTICIPATED_DROP_DATE] [datetime] NULL,
[PAGES] [float] NULL,
[PERCENT_COMPLETE] [float] NULL,
[OFFER_COST] [float] NULL,
[PRICE STATUS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Offer_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Offer] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Offer$DIVISION_ID$disallow_zero_length] CHECK ((len([DIVISION_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Offer] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Offer$OFFER_ID$disallow_zero_length] CHECK ((len([OFFER_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Offer] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Offer$PRICE STATUS$disallow_zero_length] CHECK ((len([PRICE STATUS])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Offer] ADD CONSTRAINT [SSMA_PK$MkTbl_Offer] PRIMARY KEY NONCLUSTERED  ([OFFER_ID], [MACRO_CIRCULATION]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[ANTICIPATED_DROP_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'ANTICIPATED_DROP_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[DIVISION_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'DIVISION_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[MACRO_CIRCULATION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'MACRO_CIRCULATION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[MACRO_ORDERS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'MACRO_ORDERS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[MACRO_REVENUE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'MACRO_REVENUE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[MACRO_UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'MACRO_UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[OFFER_COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'OFFER_COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[OFFER_YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'OFFER_YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[PAGES]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'PAGES'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[PERCENT_COMPLETE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'PERCENT_COMPLETE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Offer].[PRICE STATUS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Offer', 'COLUMN', N'PRICE STATUS'
GO
