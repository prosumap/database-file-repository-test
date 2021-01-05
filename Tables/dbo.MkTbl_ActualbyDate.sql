CREATE TABLE [dbo].[MkTbl_ActualbyDate]
(
[Ctr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORDER_DATE] [datetime] NULL,
[GROSS DEMAND] [float] NULL,
[DEMAND COST] [float] NULL,
[DEMAND UNITS] [float] NULL,
[NET DEMAND] [float] NULL,
[CANCEL UNITS] [float] NULL,
[SHIPPED UNITS] [float] NULL,
[RETURN UNITS] [float] NULL,
[FiscalWk] [float] NULL,
[MonthNo] [float] NULL,
[MonthDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Qtr] [float] NULL,
[Year] [float] NULL,
[YYYYWK] [int] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_ActualbyDate_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_ActualbyDate] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ActualbyDate$MonthDesc$disallow_zero_length] CHECK ((len([MonthDesc])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ActualbyDate] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_ActualbyDate$OFFER_ID$disallow_zero_length] CHECK ((len([OFFER_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_ActualbyDate] ADD CONSTRAINT [SSMA_PK$MkTbl_ActualbyDate] PRIMARY KEY NONCLUSTERED  ([Ctr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[CANCEL UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'CANCEL UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[FiscalWk]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'FiscalWk'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[GROSS DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'GROSS DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[MonthDesc]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'MonthDesc'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[MonthNo]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'MonthNo'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[NET DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'NET DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[OFFER_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'OFFER_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[ORDER_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'ORDER_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[Qtr]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'Qtr'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[RETURN UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'RETURN UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[SHIPPED UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'SHIPPED UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_ActualbyDate].[YYYYWK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_ActualbyDate', 'COLUMN', N'YYYYWK'
GO
