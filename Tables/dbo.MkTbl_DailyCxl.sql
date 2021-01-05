CREATE TABLE [dbo].[MkTbl_DailyCxl]
(
[CxlCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Trans#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cxl_Date] [datetime] NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cxl_Net$] [float] NULL,
[Cxl_Gross$] [float] NULL,
[Cxl_Cost$] [float] NULL,
[Cxl_Units] [float] NULL,
[Cxl_RsnCd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cxl_RsnDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cxl_Fiscal_Wk] [float] NULL,
[Cxl_Fiscal_Month#] [float] NULL,
[Cxl_Fiscal_Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cxl_Fiscal_Qtr] [float] NULL,
[Cxl_Fiscal_Year] [float] NULL,
[Cxl_Season] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cxl_YYYYWK] [int] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_DailyCxl_CrOn] DEFAULT (getdate()),
[DSeq] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_DailyCxl] ADD CONSTRAINT [PK_MkTbl_DailyCxl] PRIMARY KEY CLUSTERED  ([CxlCtr]) ON [PRIMARY]
GO
