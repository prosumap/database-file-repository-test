CREATE TABLE [dbo].[MkTbl_SKUMaster_29102020]
(
[SkuCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sku] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OFFER SKU ID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUB_CATEGORY_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Offer Product Id] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BP STYLE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTOR1] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTOR2] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BP_UPCCD] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COST_EA] [float] NULL,
[UNIT_PRICE] [float] NULL,
[Vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor Style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POS Date] [datetime] NULL,
[CrOn] [datetime] NULL
) ON [PRIMARY]
GO
