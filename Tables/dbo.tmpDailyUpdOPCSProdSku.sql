CREATE TABLE [dbo].[tmpDailyUpdOPCSProdSku]
(
[PrdoSkuCtr] [bigint] NOT NULL,
[INV] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Base#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BP Base] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Upccd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description 1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spec 1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Spec 2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS Date] [nvarchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cost] [float] NULL,
[On Hand Qty] [float] NULL,
[CrOn] [datetime] NULL
) ON [PRIMARY]
GO
