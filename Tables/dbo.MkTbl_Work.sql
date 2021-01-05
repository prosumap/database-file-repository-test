CREATE TABLE [dbo].[MkTbl_Work]
(
[WorkRecId] [int] NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VERSION_NO] [float] NULL,
[GROSS DEMAND] [float] NULL,
[NET DEMAND] [float] NULL,
[DEMAND COST] [float] NULL,
[DEMAND UNITS] [float] NULL,
[UNIT_PRICE] [float] NULL,
[COST_EA] [float] NULL,
[OH U] [float] NULL,
[OO U] [float] NULL,
[HELD REQ U] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Work_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$CAT_DESCRIPTION$disallow_zero_length] CHECK ((len([CAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$COLOR DESCRIPTION$disallow_zero_length] CHECK ((len([COLOR DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$OFFER_ID$disallow_zero_length] CHECK ((len([OFFER_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$SIZE DESCRIPTION$disallow_zero_length] CHECK ((len([SIZE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$STYLE DESCRIPTION$disallow_zero_length] CHECK ((len([STYLE DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Work$SUBCAT_DESCRIPTION$disallow_zero_length] CHECK ((len([SUBCAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Work] ADD CONSTRAINT [SSMA_PK$MkTbl_Work] PRIMARY KEY NONCLUSTERED  ([WorkRecId]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[COLOR DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'COLOR DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[GROSS DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'GROSS DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[HELD REQ U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'HELD REQ U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[NET DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'NET DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[OH U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'OH U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[OO U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'OO U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[SIZE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'SIZE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[STYLE DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'STYLE DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[UNIT_PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'UNIT_PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Work].[VERSION_NO]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Work', 'COLUMN', N'VERSION_NO'
GO
