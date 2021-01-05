CREATE TABLE [dbo].[MkTbl_Finance_GTN]
(
[FinGTNCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[YearMonth] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal_Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal_Month] [float] NULL,
[Dmnd_Gross$] [float] NULL,
[Dmnd_Net$] [float] NULL,
[ImmCxl_Gross$] [float] NULL,
[ImmCxl_Net$] [float] NULL,
[Cxl_Gross$] [float] NULL,
[Cxl_Net$] [float] NULL,
[Disc$] [float] NULL,
[Tax$] [float] NULL,
[ShipHnd$] [float] NULL,
[Ship_Gross$] [float] NULL,
[Ship_Net$] [float] NULL,
[Ship_Cost$] [float] NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_MkTbl_Finance_GTN_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Finance_GTN] ADD CONSTRAINT [PK_MkTbl_Finance_GTN] PRIMARY KEY CLUSTERED  ([FinGTNCtr]) ON [PRIMARY]
GO
