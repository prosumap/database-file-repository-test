CREATE TABLE [dbo].[MkTbl_Results]
(
[ResultsCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last Event] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Units] [float] NULL,
[Cost$] [float] NULL,
[Net$] [float] NULL,
[Gross$] [float] NULL,
[Fiscal_Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal_Month#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal_Wk#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [datetime] NULL,
[Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Results_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Results] ADD CONSTRAINT [PK_MkTbl_Results] PRIMARY KEY CLUSTERED  ([ResultsCtr]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [INV10] ON [dbo].[MkTbl_Results] ([INV10]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Cost$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Cost$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Date]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Date'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Fiscal_Month#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Fiscal_Month#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Fiscal_Wk#]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Fiscal_Wk#'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Fiscal_Year]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Fiscal_Year'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Gross$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Gross$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Last Event]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Last Event'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Net$]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Net$'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Status]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Status'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Type]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Type'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Results].[Units]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Results', 'COLUMN', N'Units'
GO
