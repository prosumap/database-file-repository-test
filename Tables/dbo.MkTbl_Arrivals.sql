CREATE TABLE [dbo].[MkTbl_Arrivals]
(
[PO_ID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ARRIVAL_NO] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXP_IN_HOUSE_DATE] [datetime] NULL,
[EXP_SHIP_DATE] [datetime] NULL,
[TRANSPORTATION_MODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSMA_RowID] [int] NOT NULL IDENTITY(1, 1),
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Arrivals_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Arrivals] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Arrivals$ARRIVAL_NO$disallow_zero_length] CHECK ((len([ARRIVAL_NO])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Arrivals] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Arrivals$PO_ID$disallow_zero_length] CHECK ((len([PO_ID])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Arrivals] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$MkTbl_Arrivals$TRANSPORTATION_MODE$disallow_zero_length] CHECK ((len([TRANSPORTATION_MODE])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Arrivals] ADD CONSTRAINT [SSMA_PK$MkTbl_Arrivals] PRIMARY KEY NONCLUSTERED  ([PO_ID], [ARRIVAL_NO]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Arrivals]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Arrivals', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Arrivals].[ARRIVAL_NO]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Arrivals', 'COLUMN', N'ARRIVAL_NO'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Arrivals].[EXP_IN_HOUSE_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Arrivals', 'COLUMN', N'EXP_IN_HOUSE_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Arrivals].[EXP_SHIP_DATE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Arrivals', 'COLUMN', N'EXP_SHIP_DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Arrivals].[PO_ID]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Arrivals', 'COLUMN', N'PO_ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[MkTbl_Arrivals].[TRANSPORTATION_MODE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Arrivals', 'COLUMN', N'TRANSPORTATION_MODE'
GO
