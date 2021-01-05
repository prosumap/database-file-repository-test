CREATE TABLE [dbo].[MkTbl_Actual_DetailByDate]
(
[ORDER_DATE] [datetime] NOT NULL,
[FiscalWk] [float] NOT NULL,
[Year] [float] NOT NULL,
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GROSS DEMAND] [float] NULL,
[NET DEMAND] [float] NULL,
[DEMAND COST] [float] NULL,
[DEMAND UNITS] [float] NULL,
[CANCEL UNITS] [float] NULL,
[SHIPPED UNITS] [float] NULL,
[RETURN UNITS] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Actual_DetailByDate_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Actual_DetailByDate] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual_DetailByDate$CAT_DESCRIPTION$disallow_zero_length] CHECK ((len([CAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual_DetailByDate] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual_DetailByDate$OFFER_ID$disallow_zero_length] CHECK ((len([OFFER_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual_DetailByDate] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Actual_DetailByDate$SUBCAT_DESCRIPTION$disallow_zero_length] CHECK ((len([SUBCAT_DESCRIPTION])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Actual_DetailByDate] ADD CONSTRAINT [PK_MkTbl_Actual_DetailByDate] PRIMARY KEY CLUSTERED  ([ORDER_DATE], [FiscalWk], [Year], [OFFER_ID], [CAT_DESCRIPTION], [SUBCAT_DESCRIPTION]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[CANCEL UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'CANCEL UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[CAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'CAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[FiscalWk]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'FiscalWk'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[GROSS DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'GROSS DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[NET DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'NET DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[ORDER_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'ORDER_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[RETURN UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'RETURN UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[SHIPPED UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'SHIPPED UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[SUBCAT_DESCRIPTION]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'SUBCAT_DESCRIPTION'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Actual_DetailByDate].[Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Actual_DetailByDate', 'COLUMN', N'Year'
GO
