CREATE TABLE [dbo].[F21_FMSH_STOCK_ON_HAND]
(
[SoHCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[COMPANY_ID] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MS_VERSION_NO] [float] NOT NULL,
[SKU] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WAREHOUSE_ID] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATUS_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INV_EXPIRATION_DATE] [datetime] NOT NULL,
[QTY] [float] NULL,
[CREATED_DATETIME] [datetime] NULL,
[LAST_UPDATED_DATETIME] [datetime] NULL,
[LAST_UPDATED_BY] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_F21_FMSH_STOCK_ON_HAND_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[F21_FMSH_STOCK_ON_HAND] ADD CONSTRAINT [SSMA_CC$F21_FMSH_STOCK_ON_HAND$COMPANY_ID$disallow_zero_length] CHECK ((len([COMPANY_ID])>(0)))
GO
ALTER TABLE [dbo].[F21_FMSH_STOCK_ON_HAND] ADD CONSTRAINT [SSMA_CC$F21_FMSH_STOCK_ON_HAND$LAST_UPDATED_BY$disallow_zero_length] CHECK ((len([LAST_UPDATED_BY])>(0)))
GO
ALTER TABLE [dbo].[F21_FMSH_STOCK_ON_HAND] ADD CONSTRAINT [SSMA_CC$F21_FMSH_STOCK_ON_HAND$SKU$disallow_zero_length] CHECK ((len([SKU])>(0)))
GO
ALTER TABLE [dbo].[F21_FMSH_STOCK_ON_HAND] ADD CONSTRAINT [SSMA_CC$F21_FMSH_STOCK_ON_HAND$STATUS_ID$disallow_zero_length] CHECK ((len([STATUS_ID])>(0)))
GO
ALTER TABLE [dbo].[F21_FMSH_STOCK_ON_HAND] ADD CONSTRAINT [SSMA_CC$F21_FMSH_STOCK_ON_HAND$WAREHOUSE_ID$disallow_zero_length] CHECK ((len([WAREHOUSE_ID])>(0)))
GO
ALTER TABLE [dbo].[F21_FMSH_STOCK_ON_HAND] ADD CONSTRAINT [PK_F21_FMSH_STOCK_ON_HAND] PRIMARY KEY CLUSTERED  ([SoHCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[COMPANY_ID]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'COMPANY_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[CREATED_DATETIME]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'CREATED_DATETIME'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[INV_EXPIRATION_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'INV_EXPIRATION_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[LAST_UPDATED_BY]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'LAST_UPDATED_BY'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[LAST_UPDATED_DATETIME]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'LAST_UPDATED_DATETIME'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[MS_VERSION_NO]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'MS_VERSION_NO'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[QTY]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'QTY'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[SKU]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'SKU'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[STATUS_ID]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'STATUS_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[F21_FMSH_STOCK_ON_HAND].[WAREHOUSE_ID]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_STOCK_ON_HAND', 'COLUMN', N'WAREHOUSE_ID'
GO
