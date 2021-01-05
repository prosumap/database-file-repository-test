CREATE TABLE [dbo].[MkTbl_WklyInventory]
(
[WklyInvCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[FISCAL_YEAR] [float] NULL,
[FISCAL_WEEK] [float] NULL,
[SKU] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATUS_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FISCAL_QUARTER] [float] NULL,
[FISCAL_MONTH] [float] NULL,
[WEEK_BEGIN_DATE] [datetime] NULL,
[WEEK_END_DATE] [datetime] NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UNITS] [float] NULL,
[COST_EA] [float] NULL,
[COST] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_WklyInventory_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_WklyInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_WklyInventory$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_WklyInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_WklyInventory$SKU$disallow_zero_length] CHECK ((len([SKU])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_WklyInventory] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_WklyInventory$STATUS_ID$disallow_zero_length] CHECK ((len([STATUS_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_WklyInventory] ADD CONSTRAINT [PK_MkTbl_WklyInventory] PRIMARY KEY CLUSTERED  ([WklyInvCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[FISCAL_MONTH]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'FISCAL_MONTH'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[FISCAL_QUARTER]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'FISCAL_QUARTER'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[FISCAL_WEEK]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'FISCAL_WEEK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[FISCAL_YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'FISCAL_YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[SKU]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'SKU'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[STATUS_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'STATUS_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[WEEK_BEGIN_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'WEEK_BEGIN_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_WklyInventory].[WEEK_END_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_WklyInventory', 'COLUMN', N'WEEK_END_DATE'
GO
