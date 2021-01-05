CREATE TABLE [dbo].[tmpDailyUpdF21VdrsSKUs]
(
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SKU] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUB_CATEGORY_ID] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTOR1] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DESCRIPTOR2] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UNIT_PRICE] [decimal] (9, 2) NULL
) ON [PRIMARY]
GO
