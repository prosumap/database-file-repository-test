CREATE TABLE [dbo].[RefTbl_Calendar]
(
[Date] [datetime] NOT NULL,
[FiscalWk] [float] NULL,
[MonthNo] [float] NULL,
[MonthDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Qtr] [float] NULL,
[Year] [float] NULL,
[Season of Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Calendar MonthNo] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Calendar Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Calendar Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YYYYWK] [int] NULL CONSTRAINT [DF__RefTbl_Ca__YYYYW__719CDDE7] DEFAULT ((0)),
[CrOn] [datetime] NULL CONSTRAINT [DF_RefTbl_Calendar_CrOn] DEFAULT (getdate()),
[Marketing Notes - Weekly] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Marketing Notes - Daily] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RefTbl_Calendar] ADD CONSTRAINT [SSMA_PK$RefTbl_Calendar] PRIMARY KEY NONCLUSTERED  ([Date]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[Calendar Month]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'Calendar Month'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[Calendar MonthNo]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'Calendar MonthNo'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[Calendar Year]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'Calendar Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[Date]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[FiscalWk]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'FiscalWk'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[MonthDesc]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'MonthDesc'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[MonthNo]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'MonthNo'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[Qtr]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'Qtr'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[Season of Year]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'Season of Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[Year]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[RefTbl_Calendar].[YYYYWK]', 'SCHEMA', N'dbo', 'TABLE', N'RefTbl_Calendar', 'COLUMN', N'YYYYWK'
GO
