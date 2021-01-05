CREATE TABLE [dbo].[MkTbl_DailyExch]
(
[ExchCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Trans#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exch_Date] [datetime] NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exch_Net$] [float] NULL,
[Exch_Gross$] [float] NULL,
[Exch_Cost$] [float] NULL,
[Exch_Units] [float] NULL,
[Exch_RsnCd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exch_RsnDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exch_Fiscal_Wk] [float] NULL,
[Exch_Fiscal_Month#] [float] NULL,
[Exch_Fiscal_Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exch_Fiscal_Qtr] [float] NULL,
[Exch_Fiscal_Year] [float] NULL,
[Exch_Season] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exch_YYYYWK] [int] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_DailyExch_CrOn] DEFAULT (getdate()),
[DSeq] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_DailyExch] ADD CONSTRAINT [PK_MkTbl_DailyExch] PRIMARY KEY CLUSTERED  ([ExchCtr]) ON [PRIMARY]
GO
