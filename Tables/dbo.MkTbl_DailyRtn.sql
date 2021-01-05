CREATE TABLE [dbo].[MkTbl_DailyRtn]
(
[RtnCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Trans#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rtn_Date] [datetime] NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Catalog] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rtn_Net$] [float] NULL,
[Rtn_Gross$] [float] NULL,
[Rtn_Cost$] [float] NULL,
[Rtn_Units] [float] NULL,
[Rtn_RsnCd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rtn_RsnDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rtn_Fiscal_Wk] [float] NULL,
[Rtn_Fiscal_Month#] [float] NULL,
[Rtn_Fiscal_Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rtn_Fiscal_Qtr] [float] NULL,
[Rtn_Fiscal_Year] [float] NULL,
[Rtn_Season] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rtn_YYYYWK] [int] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_DailyRtn_CrOn] DEFAULT (getdate()),
[DSeq] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_DailyRtn] ADD CONSTRAINT [PK_MkTbl_DailyRtn] PRIMARY KEY CLUSTERED  ([RtnCtr]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MkTbl_DailyRtn] ON [dbo].[MkTbl_DailyRtn] ([Line_Catalog], [INV10]) ON [PRIMARY]
GO
