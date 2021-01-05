CREATE TABLE [dbo].[MkTbl_1stProjection_01092020]
(
[1stProjCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[OFFER_ID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUBCAT_DESCRIPTION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STYLE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SIZE DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VERSION_NO] [float] NULL,
[OFFERED DEMAND $] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DEMAND COST] [float] NULL,
[DEMAND UNITS] [float] NULL,
[UNIT_PRICE] [float] NULL,
[COST_EA] [float] NULL,
[OH U] [float] NULL,
[OO U] [float] NULL,
[HELD REQ U] [float] NULL
) ON [PRIMARY]
GO
