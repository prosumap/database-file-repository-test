CREATE TABLE [dbo].[F21_FMSH_WEEKLY_INVENTORY_POSITION]
(
[COMPANY_ID] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SKU] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WAREHOUSE_ID] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CALENDAR_SEQ] [float] NOT NULL,
[STATUS_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITS] [float] NULL,
[COST_EA] [float] NULL,
[STD_COST_EA] [float] NULL,
[INVENTORY_VARIANCE_EA] [float] NULL,
[ADDITIONAL_COST_EA] [float] NULL,
[AGENT_FEES_EA] [float] NULL,
[DUTY_FEES_EA] [float] NULL,
[FREIGHT_FEES_EA] [float] NULL,
[PRICE_EA] [float] NULL,
[OUT_OF_STOCK_FLAG] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BEG_UNITS] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[F21_FMSH_WEEKLY_INVENTORY_POSITION] ADD CONSTRAINT [F21_FMSH_WEEKLY_INVENTORY_POSITION_PK] PRIMARY KEY CLUSTERED  ([COMPANY_ID], [SKU], [WAREHOUSE_ID], [CALENDAR_SEQ], [STATUS_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[ADDITIONAL_COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'ADDITIONAL_COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[AGENT_FEES_EA]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'AGENT_FEES_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[BEG_UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'BEG_UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[CALENDAR_SEQ]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'CALENDAR_SEQ'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[COMPANY_ID]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'COMPANY_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[DUTY_FEES_EA]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'DUTY_FEES_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[FREIGHT_FEES_EA]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'FREIGHT_FEES_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[INVENTORY_VARIANCE_EA]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'INVENTORY_VARIANCE_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[OUT_OF_STOCK_FLAG]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'OUT_OF_STOCK_FLAG'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[PRICE_EA]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'PRICE_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[SKU]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'SKU'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[STATUS_ID]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'STATUS_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[STD_COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'STD_COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'Tables Only.[F21_FMSH_WEEKLY_INVENTORY_POSITION].[WAREHOUSE_ID]', 'SCHEMA', N'dbo', 'TABLE', N'F21_FMSH_WEEKLY_INVENTORY_POSITION', 'COLUMN', N'WAREHOUSE_ID'
GO