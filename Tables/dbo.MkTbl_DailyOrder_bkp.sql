CREATE TABLE [dbo].[MkTbl_DailyOrder_bkp]
(
[DailyOrdCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Catalog] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item_Date] [datetime] NULL,
[Ticket] [float] NULL,
[AUR] [float] NULL,
[Cost] [float] NULL,
[Dmnd_Units] [float] NULL,
[Dmnd_Net$] [float] NULL,
[Dmnd_Gross$] [float] NULL,
[Dmnd_Cost$] [float] NULL,
[ImmCx_Units] [float] NULL,
[ImmCxl_Net$] [float] NULL,
[ImmCxl_Gross$] [float] NULL,
[ImmCxl_Cost$] [float] NULL,
[Ord_Fiscal_Wk] [float] NULL,
[Ord_Fiscal_Month#] [float] NULL,
[Ord_Fiscal_Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ord_Fiscal_Qtr] [float] NULL,
[Ord_Fiscal_Year] [float] NULL,
[Ord_Season] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ord_YYYYWK] [int] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_DailyOrder_CrOn] DEFAULT (getdate()),
[Dtl Seq] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_DailyOrder_bkp] ADD CONSTRAINT [PK_MkTbl_DailyOrder] PRIMARY KEY CLUSTERED  ([DailyOrdCtr]) ON [PRIMARY]
GO
