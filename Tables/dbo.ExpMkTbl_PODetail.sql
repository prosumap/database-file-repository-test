CREATE TABLE [dbo].[ExpMkTbl_PODetail]
(
[CATALOG] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PO #] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REQ #] [float] NULL,
[NDC] [datetime] NULL,
[ORIGINAL NDC] [datetime] NULL,
[GROUP CODE] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MERCH TYPE] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VENDOR #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VENDOR DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VENDOR STYLE #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST] [float] NULL,
[OO UNITS] [float] NULL,
[OO COST $] [float] NULL,
[OO TICKET $] [float] NULL,
[OO IMU %] [float] NULL,
[APPROVED DATE] [datetime] NULL,
[FISCAL WEEK] [float] NULL,
[FISCAL YEAR] [float] NULL,
[CATALOG DESC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSMA_RowID] [int] NOT NULL IDENTITY(1, 1),
[CrOn] [datetime] NULL CONSTRAINT [DF_ExpMkTbl_PODetail_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$CATALOG DESC$disallow_zero_length] CHECK ((len([CATALOG DESC])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$CATALOG$disallow_zero_length] CHECK ((len([CATALOG])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$COLOR DESC$disallow_zero_length] CHECK ((len([COLOR DESC])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$GROUP CODE$disallow_zero_length] CHECK ((len([GROUP CODE])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$MERCH TYPE$disallow_zero_length] CHECK ((len([MERCH TYPE])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$PO #$disallow_zero_length] CHECK ((len([PO #])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$SIZE DESC$disallow_zero_length] CHECK ((len([SIZE DESC])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$STYLE DESC$disallow_zero_length] CHECK ((len([STYLE DESC])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$VENDOR #$disallow_zero_length] CHECK ((len([VENDOR #])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$VENDOR DESC$disallow_zero_length] CHECK ((len([VENDOR DESC])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] WITH NOCHECK ADD CONSTRAINT [SSMA_CC$ExpMkTbl_PODetail$VENDOR STYLE #$disallow_zero_length] CHECK ((len([VENDOR STYLE #])>(0)))
GO
ALTER TABLE [dbo].[ExpMkTbl_PODetail] ADD CONSTRAINT [SSMA_PK$ExpMkTbl_PODetail] PRIMARY KEY NONCLUSTERED  ([CATALOG], [PO #], [INV10]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[APPROVED DATE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'APPROVED DATE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[CATALOG]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'CATALOG'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[CATALOG DESC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'CATALOG DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[COLOR DESC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'COLOR DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[COST]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[FISCAL WEEK]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'FISCAL WEEK'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[FISCAL YEAR]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'FISCAL YEAR'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[GROUP CODE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'GROUP CODE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[MERCH TYPE]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'MERCH TYPE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[NDC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'NDC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[OO COST $]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'OO COST $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[OO IMU %]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'OO IMU %'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[OO TICKET $]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'OO TICKET $'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[OO UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'OO UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[ORIGINAL NDC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'ORIGINAL NDC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[PO #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'PO #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[REQ #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'REQ #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[SIZE DESC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'SIZE DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[STYLE DESC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'STYLE DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[VENDOR #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'VENDOR #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[VENDOR DESC]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'VENDOR DESC'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[ExpMkTbl_PODetail].[VENDOR STYLE #]', 'SCHEMA', N'dbo', 'TABLE', N'ExpMkTbl_PODetail', 'COLUMN', N'VENDOR STYLE #'
GO
