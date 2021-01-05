CREATE TABLE [dbo].[MkTbl_DailyShip]
(
[ShipCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Trans#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ship_Date] [datetime] NULL,
[Status] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Catalog] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ship_Net$] [float] NULL,
[Ship_Gross$] [float] NULL,
[Ship_Cost$] [float] NULL,
[Ship_Units] [float] NULL,
[Ship_RsnCd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ship_RsnDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ship_Fiscal_Wk] [float] NULL,
[Ship_Fiscal_Month#] [float] NULL,
[Ship_Fiscal_Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ship_Fiscal_Qtr] [float] NULL,
[Ship_Fiscal_Year] [float] NULL,
[Ship_Season] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ship_YYYYWK] [int] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_DailyShip_CrOn] DEFAULT (getdate()),
[DSeq] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_DailyShip] ADD CONSTRAINT [PK_MkTbl_DailyShip] PRIMARY KEY CLUSTERED  ([ShipCtr]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MkTbl_DailyShip] ON [dbo].[MkTbl_DailyShip] ([Line_Catalog], [INV10]) ON [PRIMARY]
GO
